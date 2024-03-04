// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bac_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BacNoteImpl _$$BacNoteImplFromJson(Map<String, dynamic> json) =>
    _$BacNoteImpl(
      note: (json['note'] as num).toDouble(),
      refCodeMatiereLibelleFr: json['refCodeMatiereLibelleFr'] as String,
    );

Map<String, dynamic> _$$BacNoteImplToJson(_$BacNoteImpl instance) =>
    <String, dynamic>{
      'note': instance.note,
      'refCodeMatiereLibelleFr': instance.refCodeMatiereLibelleFr,
    };
