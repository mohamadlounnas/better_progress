import 'package:freezed_annotation/freezed_annotation.dart';

part 'bac_note.freezed.dart';
part 'bac_note.g.dart';

@freezed
class BacNote with _$BacNote {

  factory BacNote({
    required double note,
    required String refCodeMatiereLibelleFr,
  }) = _BacNote;

  factory BacNote.fromJson(Map<String, dynamic> json) => _$BacNoteFromJson(json);
}