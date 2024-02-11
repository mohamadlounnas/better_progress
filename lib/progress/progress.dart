// import http
import 'dart:convert';
import 'dart:ui';

import 'package:better_progress/progress/models/student.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_isar_store/dio_cache_interceptor_isar_store.dart';
import 'package:path_provider/path_provider.dart';

import 'models/academic_year.dart';
import 'models/auth_response.dart';
import 'models/cc_note.dart';
import 'models/exam_note.dart';
import 'models/exam_schedule.dart';
import 'models/periode.dart';
import 'models/study_year.dart';

abstract class Progress {
  /// [login] login using [username] and [password]
  /// it return [AuthResponse] if the login is successful
  Future<AuthResponse> login({required String username, required String password});

  /// [logout] logout the current user
  Future<void> logout();
}

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

/// implementation of the [Progress] interface
class BetterProgress extends ChangeNotifier implements Progress {
  /// the http client used to make the requests
  final Dio _client;

  /// the shared preferences used to store the user data
  late final SharedPreferences _prefs;

  BetterProgress({Dio? client}) : _client = client ?? Dio();

  static final BetterProgress _instance = BetterProgress();
  static BetterProgress get instance => _instance;

  /// initialize the [BetterProgress] and get the [SharedPreferences]
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    await loadCredentials();
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

    // headers
    // _client.options.headers['Host'] = 'progres.mesrs.dz';
    // _client.options.headers['Accept'] = 'application/json, text/plain, */*';
    // _client.options.headers['User-Agent'] = 'webetu/1 CFNetwork/1494.0.5 Darwin/23.4.0';
    if (authResponse != null) {
      _client.options.headers['Authorization'] = authResponse!.token;
    }
    // RequestOptions.validateStatus
    _client.options.validateStatus = (status) => true;
    // timeout for all the requests 10 seconds (it should use cache if timeout is reached)
    _client.options.connectTimeout = const Duration(seconds: 10);
    _client.options.receiveTimeout = const Duration(seconds: 10);
  }

  /// the user data
  AuthResponse? authResponse;

  /// student data
  Student? student;

  /// the study years
  List<StudyYear>? studyYears;

  /// check if there is a user authenticated (save in isar)
  /// anneeAcademiqueId
  Future<void> initAuth() async {
    await loadAuthResponse();
    if (authResponse != null) {
      try {
        await loadStudent();
        await loadAcademicYear();
        await loadStudyYear();
        await loadExamNotes();
        await loadCCNotes();
      } on DioException catch (e) {
        if (e.response?.statusCode == 401) {
          await logout();
        }
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> loadExamNotes() async {
    final examNotesData = _prefs.getString('examNotes');
    if (examNotesData != null) {
      examNotes = (jsonDecode(examNotesData) as List).map((e) => ExamNote.fromJson(e)).toList();
      notifyListeners();
    } else {
      examNotes = await getExamNotes();
      await _prefs.setString('examNotes', jsonEncode(examNotes));
      notifyListeners();
    }
  }

  Future<void> loadCCNotes() async {
    final ccNotesData = _prefs.getString('ccNotes');
    if (ccNotesData != null) {
      ccNotes = (jsonDecode(ccNotesData) as List).map((e) => CCNote.fromJson(e)).toList();
      notifyListeners();
    } else {
      ccNotes = await getCCNotes();
      await _prefs.setString('ccNotes', jsonEncode(ccNotes));
      notifyListeners();
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

  Future<void> saveExamNotes() async {
    await _prefs.setString('examNotes', jsonEncode(examNotes));
  }

  Future<void> saveCCNotes() async {
    await _prefs.setString('ccNotes', jsonEncode(ccNotes));
  }

  List<ExamNote>? examNotes;
  List<CCNote>? ccNotes;

  int? get currentStudyYearId => studyYears?.firstOrNull?.id;

  Future<void> loadStudyYear() async {
    final studyYearData = _prefs.getString('studyYear');
    if (studyYearData != null) {
      studyYears = (jsonDecode(studyYearData) as List).map((e) => StudyYear.fromJson(e)).toList();
      notifyListeners();
    } else {
      studyYears = await getStudyYears();
      await _prefs.setString('studyYear', jsonEncode(studyYears));
      notifyListeners();
    }
  }

  Future<void> loadAcademicYear() async {
    final academicYearData = _prefs.getString('academicYear');
    if (academicYearData != null) {
      academicYear = AcademicYear.fromJson(jsonDecode(academicYearData));
      notifyListeners();
    } else {
      academicYear = await getAcademicYear();
      await _prefs.setString('academicYear', jsonEncode(academicYear));
      notifyListeners();
    }
  }

  Future<void> loadStudent() async {
    final studentData = _prefs.getString('student');
    if (studentData != null) {
      student = Student.fromJson(jsonDecode(studentData));
      notifyListeners();
    } else {
      student = await getStudent();
      await saveStudent();
      notifyListeners();
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

  Future<void> saveStudyYears() async {
    await _prefs.setString('studyYear', jsonEncode(studyYears));
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
    await _prefs.setString('student', jsonEncode(student!.toJson()));
  }

  Future<void> loadAuthResponse() async {
    final token = _prefs.getString('authResponse');
    if (token != null) {
      authResponse = AuthResponse.fromJson(jsonDecode(token));
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
    final cachedAcademicYear = _prefs.getString('academicYear');
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
        await _prefs.setString('academicYear', jsonEncode(response.data));
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
    final cachedExamNotes = _prefs.getString('examNotes');
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
        await _prefs.setString('examNotes', jsonEncode(response.data));
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
  Stream<Result<List<ExamNote>>> getExamNotesStream() {
    return _getExamNotesStream().asBroadcastStream();
  }

  @override
  Future<AuthResponse> login({required String username, required String password, bool saveCredentials = true}) async {
    final result = await _client.post('https://progres.mesrs.dz/api/authentication/v1/', data: {
      'username': username,
      'password': password,
    });
    if (result.statusCode == 200) {
      await setAuthResponse(AuthResponse.fromJson(result.data));
      if (saveCredentials) {
        await addCredentials(username, password);
      }
      await loadStudent();
      await loadAcademicYear();
      await loadStudyYear();
      await loadExamNotes();
      await loadCCNotes();
      return authResponse!;
    } else {
      throw Exception('Error ${result.statusCode}');
    }
  }

  Map<String, String> savedCredentials = {};

  /// load credentials from the shared preferences
  Future<void> loadCredentials() async {
    final credentials = _prefs.getString('credentials');
    if (credentials != null) {
      savedCredentials = Map.from(jsonDecode(credentials));
    }
    notifyListeners();
  }

  /// save credentials to the shared preferences
  Future<void> saveCredentials() async {
    await _prefs.setString('credentials', jsonEncode(savedCredentials));
  }

  Future<void> addCredentials(String username, String password) async {
    savedCredentials[username] = password;
    await saveCredentials();
  }

  Future<void> setAuthResponse(AuthResponse? response) async {
    authResponse = response;
    _client.options.headers['Authorization'] = authResponse?.token;
    await _prefs.setString('authResponse', jsonEncode(authResponse?.toJson()));
    notifyListeners();
  }

  @override
  Future<void> logout() async {
    authResponse = null;
    student = null;
    studyYears = null;
    _client.options.headers.remove('Authorization');
    notifyListeners();
  }
}

Future<void> debugDelay() async {
  await Future.delayed(const Duration(seconds: 2));
}
