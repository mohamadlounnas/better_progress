
import 'models/academic_year.dart';
import 'models/auth_response.dart';
import 'models/bac_info.dart';
import 'models/bac_note.dart';
import 'models/cc_note.dart';
import 'models/exam_note.dart';
import 'models/group.dart';
import 'models/student.dart';
import 'models/study_result.dart';
import 'models/study_year.dart';

/// This file contains the abstract class `Progress` which defines the interface for progress-related operations.
/// It provides methods for logging in and logging out.
///
/// The `Progress` class has the following methods:
/// - `login`: A method that allows a user to log in using a username and password. It returns an `AuthResponse` if the login is successful.
/// - `logout`: A method that logs out the current user.
///
/// Example usage:
/// ```dart
/// Progress progress = MyProgress();
/// await progress.login(username: 'john', password: 'password');
/// await progress.logout();
/// ```
abstract class Progress {
  /// [login] login using [username] and [password]
  /// it return [AuthResponse] if the login is successful
  Future<AuthResponse> login({required String username, required String password});

  /// [logout] logout the current user
  Future<void> logout();
  /// Retrieves the academic year.
  ///
  /// Returns a [Future] that resolves to an [AcademicYear] object.
  Future<AcademicYear> getAcademicYear();

  /// Retrieves the list of exam notes.
  ///
  /// Returns a [Future] that resolves to a list of [ExamNote] objects.
  Future<List<ExamNote>> getExamNotes();

  /// Retrieves the list of CC notes.
  ///
  /// Returns a [Future] that resolves to a list of [CCNote] objects.
  Future<List<CCNote>> getCCNotes();

  /// Retrieves the list of Bac notes.
  ///
  /// Returns a [Future] that resolves to a list of [BacNote] objects.
  Future<List<BacNote>> getBacNotes();

  /// Retrieves the Bac info.
  ///
  /// Returns a [Future] that resolves to a [BacInfo] object.
  Future<BacInfo> getBacInfo();

  /// Retrieves the list of groups.
  ///
  /// Returns a [Future] that resolves to a list of [Group] objects.
  Future<List<Group>> getGroups();

  /// Retrieves the list of study results.
  ///
  /// Optionally takes an [int] studyYearId as a parameter.
  /// If provided, it filters the results based on the study year ID.
  ///
  /// Returns a [Future] that resolves to a list of [StudyResult] objects.
  Future<List<StudyResult>> getResults([int? studyYearId]);

  /// Retrieves the study result for a specific period.
  ///
  /// Takes an [int] periodeId as a parameter, representing the period ID.
  ///
  /// Returns a [Future] that resolves to a [StudyResult] object.
  Future<StudyResult> getStudyResult(int periodeId);

  /// Retrieves the student information.
  ///
  /// Returns a [Future] that resolves to a [Student] object.
  Future<Student> getStudent();

  /// Retrieves the list of study years.
  ///
  /// Returns a [Future] that resolves to a list of [StudyYear] objects.
  Future<List<StudyYear>> getStudyYears();
}
