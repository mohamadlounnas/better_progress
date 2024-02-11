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

  String? get photoUrl => photo !=null ? 
    "https://progres.mesrs.dz/webfve/javax.faces.resource/dynamiccontent.properties.xhtml?ln=primefaces&v=12.0.0&e=12.0.0&pfdrid=99d1ffdd5e4bbddc75cb7695039032f&pfdrt=sc&url=${photo!.replaceAll("/", "%2F")}&pfdrid_c=true"
    : null;

  int? get age {
    try {
      final dateNaissance = DateTime.parse(this.dateNaissance);
      final now = DateTime.now();
      final age = now.year - dateNaissance.year;
      if (now.month < dateNaissance.month || (now.month == dateNaissance.month && now.day < dateNaissance.day)) {
        return age - 1;
      }
      return age;
    } catch (e) {
      print(e);
    }
  }

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
}