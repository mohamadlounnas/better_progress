import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'academic_year.freezed.dart';
part 'academic_year.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class AcademicYear with _$AcademicYear {
  const AcademicYear._();
  Id get id => Isar.autoIncrement;
  const factory AcademicYear({
    required int id,
    required String code,
    String? libelle,
  }) = _AcademicYear;

  factory AcademicYear.fromJson(Map<String, dynamic> json) => _$AcademicYearFromJson(json);
}