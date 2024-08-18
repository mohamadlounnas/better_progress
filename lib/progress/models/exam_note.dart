import 'package:better_progress/progress/models/cc_note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'exam_note.freezed.dart';
part 'exam_note.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class ExamNote with _$ExamNote {
  const ExamNote._();
  Id get id_ => Isar.autoIncrement;
  factory ExamNote({
    required int id,
    required int rattachementMcId,
    required String ueCode,
    required String ueNatureLlFr,
    required String mcLibelleFr,
    required String mcLibelleAr,
    required double rattachementMcCoefficient,
    required double rattachementMcCredit,
    required int planningSessionId,
    required String planningSessionIntitule,
    required int idPeriode,
    double? noteExamen,
  }) = _ExamNote;

  double? get total =>
    noteExamen == null ? null :
    noteExamen! * rattachementMcCoefficient * rattachementMcCredit;

  factory ExamNote.fromJson(Map<String, dynamic> json) => _$ExamNoteFromJson(json);
}

extension ExamNoteExtension on ExamNote {
  // replace all spacail caraters like frnech char with ACCII chars
  String get rootModule => mcLibelleFr.trim().replaceAll(RegExp(r'[^\x00-\x7F]'), '').trim().replaceAll(' ', '_').replaceAll("-", "_").replaceAll("travaux pratiques??", "").toLowerCase().trim();
  String get moduleName => "ex:$rootModule";
  String get moduleNameAr => "ex:${mcLibelleAr.replaceAll(RegExp(r'[^\x00-\x7F]'), '').replaceAll(' ', '_').replaceAll("-", "_").toLowerCase().trim()}";
  String get moduleCode => rootModule.hashCode.toString(); //.toString();
}

// same for CCNote
extension CCNoteExtension on CCNote {
  // replace all spacail caraters like frnech char with ACCII chars
  String get rootModule => rattachementMcMcLibelleFr.trim().replaceAll(RegExp(r'[^\x00-\x7F]'), '').trim().replaceAll(' ', '_').replaceAll("-", "_").replaceAll("travaux pratiques??", "").toLowerCase().trim();
  String get moduleName => "${apCode.toLowerCase()}:$rootModule";
  String get moduleNameAr => "${apCode.toLowerCase()}:${rattachementMcMcLibelleAr.replaceAll(RegExp(r'[^\x00-\x7F]'), '').replaceAll(' ', '_').replaceAll("-", "_").toLowerCase().trim()}";
  String get moduleCode => rootModule.hashCode.toString(); //.length.toString();
}