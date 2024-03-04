// import http
import 'dart:convert';

import 'package:better_progress/progress/models/student.dart';
import 'package:better_progress/progress/models/study_result.dart';
import 'package:better_progress/progress/models/study_result_group.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_isar_store/dio_cache_interceptor_isar_store.dart';
import 'package:path_provider/path_provider.dart';

import 'interface.dart';
import 'models/academic_year.dart';
import 'models/auth_response.dart';
import 'models/bac_info.dart';
import 'models/bac_note.dart';
import 'models/cc_note.dart';
import 'models/exam_note.dart';
import 'models/group.dart';
import 'models/study_year.dart';

enum ResultStatus {
  success,
  error,
  loading
}

enum ResultSource {
  cache,
  network
}

/// [Result] is a generic class that represent the result of an operation
class Result<T> {
  /// the data of the result
  final T? data;

  /// the error of the result
  final Object? error;

  /// the status of the result
  final ResultStatus status;

  /// the source of the result
  final ResultSource? source;

  Result({this.data, this.error, this.status = ResultStatus.loading, this.source});

  /// copyWith method to create a new instance of [Result] with some new values
  Result<T> copyWith({
    T? data,
    Object? error,
    ResultStatus? status,
    ResultSource? source,
  }) {
    return Result<T>(
      data: data ?? this.data,
      error: error ?? this.error,
      status: status ?? this.status,
      source: source ?? this.source,
    );
  }
}

/// app language that can be used in the app
enum AppLanguage {
  ar,
  fr,
}

/// implementation of the [Progress] interface
class BetterProgress extends ChangeNotifier implements Progress {
  /// the http client used to make the requests
  final Dio _client;

  /// the shared preferences used to store the user data
  late final SharedPreferences _prefs;

  BetterProgress({Dio? client}) : _client = client ?? Dio();

  static final BetterProgress _instance = BetterProgress();
  static BetterProgress get instance => _instance;

  // current lang
  AppLanguage currentLang = AppLanguage.fr;

  // current theme mode
  ThemeMode currentThemeMode = ThemeMode.system;
  // toggleThemeMode
  void toggleThemeMode() {
    currentThemeMode = currentThemeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  // toggleLang
  void toggleLang() {
    currentLang = currentLang == AppLanguage.ar ? AppLanguage.fr : AppLanguage.ar;
    notifyListeners();
  }

  /// initialize the [BetterProgress] and get the [SharedPreferences]
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    await _loadLastBacId();
    await loadCredentials();
    await loadAuthResponse();
    await initAuth();
    _client.interceptors.add(
      DioCacheInterceptor(
        options: CacheOptions(
          store: IsarCacheStore(
            kIsWeb ? "" : (await getApplicationDocumentsDirectory()).path,
            name: 'better_progress_cache',
          ),
          policy: CachePolicy.refresh,
        ),
      ),
    );
    if (authResponse != null) {
      _client.options.headers['Authorization'] = authResponse!.token;
    }
    // RequestOptions.validateStatus
    _client.options.validateStatus = (status) => true;
    // timeout for all the requests 10 seconds (it should use cache if timeout is reached)
    _client.options.connectTimeout = const Duration(seconds: 10);
    _client.options.receiveTimeout = const Duration(seconds: 10);
  }

  /// Loads the photo from the server and decodes it into bytes.
  /// If [authResponse] is null, the function returns immediately.
  /// The photo is retrieved using the [DefaultCacheManager] and the provided URL.
  /// The request is authenticated using the token from [authResponse].
  /// Once the photo is retrieved and converted to bytes, it is decoded from base64 and assigned to [photoData].
  /// Finally, the [notifyListeners] method is called to notify listeners of the change in [photoData].
  Future<void> loadPhoto() async {
    if (authResponse == null) return;
    var file = await DefaultCacheManager().getSingleFile(
      "https://progres.mesrs.dz/api/infos/image/${BetterProgress.instance.authResponse?.bacYear}/${BetterProgress.instance.authResponse?.bacId}",
      headers: {
        "Authorization": BetterProgress.instance.authResponse!.token,
      },
    );
    //
    var fileBytes = await file.readAsBytes();
    var string = String.fromCharCodes(fileBytes);
    photoData = base64Decode(string);
    notifyListeners();
  }

  Uint8List? photoData;

  /// same as [loadPhoto] but for the university logo
  Future<void> loadUniversityLogo() async {
    if (authResponse == null) return;
    var file = await DefaultCacheManager().getSingleFile(
      "https://progres.mesrs.dz/api/infos/logoEtablissement/${authResponse?.etablissementId}",
      headers: {
        "Authorization": BetterProgress.instance.authResponse!.token,
      },
    );
    //
    var fileBytes = await file.readAsBytes();
    var string = String.fromCharCodes(fileBytes);
    universityLogoData = base64Decode(string);
    notifyListeners();
  }

  Uint8List? universityLogoData;

  /// the user data
  AuthResponse? authResponse;

  /// student data
  Student? student;

  /// the study years
  List<StudyYear>? studyYears;

  /// check if there is a user authenticated (save in isar)
  /// anneeAcademiqueId
  Future<void> initAuth() async {
    if (authResponse != null) {
      try {
        await loadStudent(offline: true);
        await loadAcademicYear(offline: true);
        await loadStudyYear(offline: true);
        await loadExamNotes(offline: true);
        await loadCCNotes(offline: true);
        await loadBacNotes(offline: true);
        await loadBacInfo(offline: true);
        await loadGroups(offline: true);
        await loadResults(offline: true);

        await loadStudent(offline: false);
        await loadAcademicYear(offline: false);
        await loadStudyYear(offline: false);
        await loadExamNotes(offline: false);
        await loadCCNotes(offline: false);
        await loadBacNotes(offline: false);
        await loadBacInfo(offline: false);
        await loadGroups(offline: false);
        await loadResults(offline: false);
      } on DioException catch (e) {
        if (e.response?.statusCode == 401) {
          await logout();
        }
      } catch (e) {
        print(e);
      }
    }
    try {
      await loadPhoto();
      await loadUniversityLogo();
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }

  Future<void> loadExamNotes({bool offline = false}) async {
    final examNotesData = getString('examNotes');
    if (examNotesData != null) {
      examNotes = (jsonDecode(examNotesData) as List).map((e) => ExamNote.fromJson(e)).toList();
      notifyListeners();
      if (offline) return;
    }
    try {
      examNotes = await getExamNotes();
      await setString('examNotes', jsonEncode(examNotes));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  // load bac notes
  Future<void> loadBacNotes({bool offline = false}) async {
    final bacNotesData = getString('bacNotes');
    if (bacNotesData != null) {
      bacNotes = (jsonDecode(bacNotesData) as List).map((e) => BacNote.fromJson(e)).toList();
      notifyListeners();
      if (offline) return;
    }
    try {
      bacNotes = await getBacNotes();
      await setString('bacNotes', jsonEncode(bacNotes));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  // load bac info
  Future<void> loadBacInfo({bool offline = false}) async {
    final bacInfoData = getString('bacInfo');
    if (bacInfoData != null) {
      bacInfo = BacInfo.fromJson(jsonDecode(bacInfoData));
      notifyListeners();
      if (offline) return;
    }
    try {
      bacInfo = await getBacInfo();
      await setString('bacInfo', jsonEncode(bacInfo));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> loadGroups({bool offline = false}) async {
    final groupsData = getString('groups');
    if (groupsData != null) {
      groups = (jsonDecode(groupsData) as List).map((e) => Group.fromJson(e)).toList();
      notifyListeners();
      if (offline) return;
    }
    try {
      groups = await getGroups();
      await setString('groups', jsonEncode(groups));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> loadResults({bool offline = false}) async {
    final resultsData = getString('results');
    if (resultsData != null) {
      results = (jsonDecode(resultsData) as List).map((e) => StudyResult.fromJson(e)).toList();
      notifyListeners();
      if (offline) return;
    }
    try {
      results = await getResults();
      await setString('results', jsonEncode(results));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> loadCCNotes({bool offline = false}) async {
    final ccNotesData = getString('ccNotes');
    if (ccNotesData != null) {
      ccNotes = (jsonDecode(ccNotesData) as List).map((e) => CCNote.fromJson(e)).toList();
      notifyListeners();
      if (offline) return;
    }

    try {
      ccNotes = await getCCNotes();
      await setString('ccNotes', jsonEncode(ccNotes));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<List<ExamNote>> getExamNotes() async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/planningSession/dia/$currentStudyYearId/noteExamens',
        options: Options(headers: {
          'Authorization': authResponse!.token,
        }));
    if (response.statusCode == 200) {
      return (response.data as List).map((e) => ExamNote.fromJson(e)).toList();
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  Future<List<CCNote>> getCCNotes() async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/controleContinue/dia/$currentStudyYearId/notesCC',
        options: Options(headers: {
          'Authorization': authResponse!.token,
        }));
    if (response.statusCode == 200) {
      return (response.data as List).map((e) => CCNote.fromJson(e)).toList();
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  // get groups
  // https://progres.mesrs.dz/api/infos/dia/6530551/groups
  Future<List<Group>> getGroups() async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/dia/$currentStudyYearId/groups',
        options: Options(headers: {
          'Authorization': authResponse!.token,
        }));
    if (response.statusCode == 200) {
      return (response.data as List).map((e) => Group.fromJson(e)).toList();
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  // get results
  // https://progres.mesrs.dz/api/infos/bac/{uuid}/dias/{idDia}/periode/bilans
  Future<List<StudyResult>> getResults([int? studyYearId]) async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/bac/${authResponse?.uuid}/dias/${studyYearId ?? currentStudyYearId}/periode/bilans',
        options: Options(headers: {
          'Authorization': authResponse!.token,
        }));
        if (response.data == "")
        // retry after 5 sec
        await Future.delayed(Duration(seconds: 5));
        return getResults(studyYearId);
    if (response.statusCode == 200) {
      return (response.data as List).map((e) => StudyResult.fromJson(e)).toList();
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  // Récupération du bilan d’ un étudiant par semestre
  // https://progres.mesrs.dz/api/infos/bac/{uuid}/dia/{idDia}/periode/{idPeriode}/bilan
  Future<StudyResult> getStudyResult(int periodeId) async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/bac/${authResponse?.uuid}/dia/$currentStudyYearId/periode/$periodeId/bilan',
        options: Options(headers: {
          'Authorization': authResponse!.token,
        }));
    if (response.statusCode == 200) {
      return StudyResult.fromJson(response.data);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  List<ExamNote>? examNotes;
  List<CCNote>? ccNotes;

  int? get currentStudyYearId => studyYears?.firstOrNull?.id;

  Future<void> loadStudyYear({bool offline = false}) async {
    final studyYearData = getString('studyYear');
    if (studyYearData != null) {
      studyYears = (jsonDecode(studyYearData) as List).map((e) => StudyYear.fromJson(e)).toList();
      notifyListeners();
      if (offline) return;
    }
    try {
      studyYears = await getStudyYears();
      await setString('studyYear', jsonEncode(studyYears));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> loadAcademicYear({bool offline = false}) async {
    final academicYearData = getString('academicYear');
    if (academicYearData != null) {
      academicYear = AcademicYear.fromJson(jsonDecode(academicYearData));
      notifyListeners();
      if (offline) return;
    }
    try {
      academicYear = await getAcademicYear();
      await setString('academicYear', jsonEncode(academicYear));
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  String? getString(String key) {
    return _prefs.getString("${currentBacId}_$key");
  }

  Future<void> setString(String key, String value) async {
    _prefs.setString("${currentBacId}_$key", value);
  }

  Future<void> loadStudent({bool offline = false}) async {
    final studentData = getString('student');
    if (studentData != null) {
      student = Student.fromJson(jsonDecode(studentData));
      notifyListeners();
      if (offline) return;
    }
    try {
      student = await getStudent();
      await saveStudent();
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  // curl -H "Host: progres.mesrs.dz" -H "Accept: application/json, text/plain, */*" -H "User-Agent: webetu/1 CFNetwork/1494.0.5 Darwin/23.4.0" -H "Accept-Language: en-GB,en-US;q=0.9,en;q=0.8" -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMDIwMzIwMjc5NzgiLCJpZENvbXB0ZSI6NjY1MjQwMywiaWRFdGFibGlzc2VtZW50IjoxMzY5NTIsImlkSW5kaXZpZHUiOjM3MjQ2NzM5LCJ1c2VyTmFtZSI6IjIwMjAzMjAyNzk3OCIsImV4cCI6MTcxMDA0MTUxOSwiaWF0IjoxNzA3NTM1OTE5fQ._6hZ9kVGzhB9NgKYM6gQxFGwY-mX87ZDXUMgCXTwf6w" --compressed "https://progres.mesrs.dz/api/infos/bac/2020/32027978/dias"
  Future<List<StudyYear>> getStudyYears() async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/bac/${authResponse!.bacYear}/${authResponse!.bacId}/dias',
        options: Options(headers: {
          'Authorization': authResponse!.token,
        }));
    if (response.statusCode == 200) {
      studyYears = List<Map<String, dynamic>>.from(response.data).map((e) => StudyYear.fromJson(e)).toList();
      return studyYears!;
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  AcademicYear? academicYear;

  Future<AcademicYear> getAcademicYear() async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/AnneeAcademiqueEncours',
        options: Options(headers: {
          'Host': 'progres.mesrs.dz',
          'Accept': 'application/json, text/plain, */*',
          'User-Agent': 'webetu/1 CFNetwork/1494.0.5 Darwin/23.4.0',
          'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
          'Authorization': authResponse!.token,
        }));
    if (response.statusCode == 200) {
      return AcademicYear.fromJson(response.data);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  // curl -H "Host: progres.mesrs.dz" -H "Accept: application/json, text/plain, */*" -H "User-Agent: webetu/1 CFNetwork/1494.0.5 Darwin/23.4.0" -H "Accept-Language: en-GB,en-US;q=0.9,en;q=0.8" -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMDIwMzIwMjc5NzgiLCJpZENvbXB0ZSI6NjY1MjQwMywiaWRFdGFibGlzc2VtZW50IjoxMzY5NTIsImlkSW5kaXZpZHUiOjM3MjQ2NzM5LCJ1c2VyTmFtZSI6IjIwMjAzMjAyNzk3OCIsImV4cCI6MTcxMDA0MTUxOSwiaWF0IjoxNzA3NTM1OTE5fQ._6hZ9kVGzhB9NgKYM6gQxFGwY-mX87ZDXUMgCXTwf6w" --compressed "https://progres.mesrs.dz/api/infos/bac/2020/32027978/individu"
  Future<Student> getStudent() async {
    final response = await _client.get('https://progres.mesrs.dz/api/infos/bac/${authResponse!.bacYear}/${authResponse!.bacId}/individu');
    if (response.statusCode == 200) {
      return Student.fromJson(response.data);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  Future<void> saveStudent() async {
    await setString('student', jsonEncode(student!.toJson()));
  }

  Future<void> loadAuthResponse() async {
    final token = getString('authResponse');
    if (token != null) {
      await setAuthResponse(AuthResponse.fromJson(jsonDecode(token)));
      notifyListeners();
    }
  }

  Future<void> saveAuthResponse() async {
    await _prefs.setString('authResponse', jsonEncode(authResponse!.toJson()));
  }

  Stream<Result<AcademicYear>> _getAcademicYearStream() async* {
    var result = Result<AcademicYear>(status: ResultStatus.loading);

    await debugDelay();

    // check cache (shared preferences)
    final cachedAcademicYear = getString('academicYear');
    if (cachedAcademicYear != null) {
      final academicYear = AcademicYear.fromJson(jsonDecode(cachedAcademicYear));
      result = result.copyWith(data: academicYear, status: ResultStatus.loading, source: ResultSource.cache);
      yield result;
      await debugDelay();
    }

    try {
      final response = await _client.get('https://progres.mesrs.dz/api/infos/AnneeAcademiqueEncours');
      if (response.statusCode == 200) {
        final academicYear = AcademicYear.fromJson(response.data);
        result = result.copyWith(data: academicYear, status: ResultStatus.success, source: ResultSource.network);
        // save the academic year in the shared preferences
        await setString('academicYear', jsonEncode(response.data));
        yield result;
      } else {
        result = result.copyWith(status: ResultStatus.error, error: 'Error ${response.statusCode}');
      }
    } catch (e) {
      result = result.copyWith(status: ResultStatus.error, error: e);
      yield result;
    }
  }

  @override
  Stream<Result<AcademicYear>> getAcademicYearStream() {
    return _getAcademicYearStream().asBroadcastStream();
  }

  Stream<Result<List<ExamNote>>> _getExamNotesStream() async* {
    var result = Result<List<ExamNote>>(status: ResultStatus.loading);

    await debugDelay();

    // check cache (shared preferences)
    final cachedExamNotes = getString('examNotes');
    if (cachedExamNotes != null) {
      final examNotes = (jsonDecode(cachedExamNotes) as List).map((e) => ExamNote.fromJson(e)).toList();
      result = result.copyWith(data: examNotes, status: ResultStatus.loading, source: ResultSource.cache);
      yield result;
      await debugDelay();
    }

    try {
      final response = await _client.get('https://progres.mesrs.dz/api/infos/planningSession/dia/$currentStudyYearId/noteExamens');
      if (response.statusCode == 200) {
        final examNotes = (response.data as List).map((e) => ExamNote.fromJson(e)).toList();
        result = result.copyWith(data: examNotes, status: ResultStatus.success, source: ResultSource.network);
        // save the exam notes in the shared preferences
        await setString('examNotes', jsonEncode(response.data));
        yield result;
      } else {
        result = result.copyWith(status: ResultStatus.error, error: 'Error ${response.statusCode}');
      }
    } catch (e) {
      result = result.copyWith(status: ResultStatus.error, error: e);
      yield result;
    }
  }

  String currentBacId = "default";

  @override
  Future<AuthResponse> login({required String username, required String password, bool saveCredentials = true}) async {
    // remove first 4 characters from the username
    currentBacId = username.substring(4);
    try {
      final result = await _client.post('https://progres.mesrs.dz/api/authentication/v1/', data: {
        'username': username,
        'password': password,
      });
      if (result.statusCode == 200) {
        await setAuthResponse(AuthResponse.fromJson(result.data));
        await saveAuthResponse();
        await initAuth();
        // save the last bac id
        await _prefs.setString('lastBacId', currentBacId);
        if (saveCredentials) {
          await addCredentials(
            name: "${student?.nomArabe} ${student?.prenomArabe} | ${BetterProgress.instance.studyYears?.first.niveauLibelleLongAr} | ${BetterProgress.instance.studyYears?.first.ofLlSpecialiteArabe ?? ""}",
            username: username,
            password: password,
          );
        }
        return authResponse!;
      } else {
        throw Exception('Error ${result.statusCode}');
      }
    } catch (e) {
      // try login with cached auth response
      await loadAuthResponse();
      await initAuth();
      return authResponse!;
    }
  }

  Map<String, Map<String, String>> savedCredentials = {};

  /// load credentials from the shared preferences
  Future<void> loadCredentials() async {
    final credentials = _prefs.getString('credentials');
    if (credentials != null) {
      var data = jsonDecode(credentials);
      var ddata = <String, Map<String, String>>{};
      // if values is string convert it to map
      for (var key in data.keys) {
        if (data[key] is String) {
          ddata[key] = Map<String, String>.from({
            'name': key.toString(),
            'username': key.toString(),
            'password': data[key].toString(),
          });
        } else {
          ddata[key] = Map<String, String>.from(data[key]);
        }
      }
      savedCredentials = Map<String, Map<String, String>>.from(ddata);
    }
    notifyListeners();
  }

  // if exists load it (_loadLastBacId)
  Future<void> _loadLastBacId() async {
    final lastBacId = _prefs.getString('lastBacId');
    if (lastBacId != null) {
      currentBacId = lastBacId;
    }
  }

  /// save credentials to the shared preferences
  Future<void> saveCredentials() async {
    await _prefs.setString('credentials', jsonEncode(savedCredentials));
  }

  Future<void> addCredentials({
    String? name,
    required String username,
    required String password,
  }) async {
    savedCredentials[username] = {
      'name': name ?? username,
      'username': username,
      'password': password,
    };
    await saveCredentials();
  }

  Future<void> setAuthResponse(AuthResponse? response) async {
    authResponse = response;
    _client.options.headers['Authorization'] = authResponse?.token;
    await setString('authResponse', jsonEncode(authResponse?.toJson()));
    notifyListeners();
  }

  @override
  Future<void> logout() async {
    authResponse = null;
    student = null;
    studyYears = null;
    _client.options.headers.remove('Authorization');
    // clear current bac id
    await _prefs.remove('lastBacId');
    await _prefs.remove('authResponse');
    notifyListeners();
  }

  // current bac notes
  List<BacNote>? bacNotes;

  // current bac info

  /// get bac notes
  Future<List<BacNote>> getBacNotes() async {
    // uuid
    final response = await _client.get(
      'https://progres.mesrs.dz/api/infos/bac/${authResponse?.uuid}/notes',
      options: Options(
        headers: {
          'Authorization': authResponse!.token,
        },
      ),
    );
    if (response.statusCode == 200) {
      return (response.data as List).map((e) => BacNote.fromJson(e)).toList();
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  BacInfo? bacInfo;
  List<Group>? groups;
  List<StudyResult>? results;

  Future<BacInfo> getBacInfo() async {
    final response = await _client.get(
      'https://progres.mesrs.dz/api/infos/bac/${authResponse?.uuid}',
      options: Options(
        headers: {
          'Authorization': authResponse!.token,
        },
      ),
    );
    if (response.statusCode == 200) {
      return BacInfo.fromJson(response.data);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }
}

Future<void> debugDelay() async {
  await Future.delayed(const Duration(seconds: 2));
}

/// arOrfr
String arfr(String ar, [String? fr]) {
  if (BetterProgress.instance.currentLang == AppLanguage.ar) {
    return ar;
  }
  return fr ?? ar;
}
