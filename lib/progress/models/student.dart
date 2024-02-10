import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Student with _$Student {
  const Student._();
  Id get id_ => id;
  const factory Student({
    required int id,
    required String identifiant,
    required String dateNaissance,
    required String nomArabe,
    required String nomLatin,
    required String prenomArabe,
    required String prenomLatin,
    required String lieuNaissance,
    required String lieuNaissanceArabe,
    String? photo,
    String? email,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
}