import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'cc_note.freezed.dart';
part 'cc_note.g.dart';
@freezed
@Collection(ignore: {'copyWith'})
class CCNote with _$CCNote {
  const CCNote._();
  Id get id_ => Isar.autoIncrement;
  const factory CCNote({
    required int id,
    double? note,
    required bool absent,
    required String llPeriode,
    required String llPeriodeAr,
    required String apCode,
    required String rattachementMcMcLibelleFr,
    required String rattachementMcMcLibelleAr,
  }) = _CCNote;

  factory CCNote.fromJson(Map<String, dynamic> json) => _$CCNoteFromJson(json);
}