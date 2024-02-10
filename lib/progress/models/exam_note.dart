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