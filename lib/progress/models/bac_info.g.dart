// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bac_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BacInfoImpl _$$BacInfoImplFromJson(Map<String, dynamic> json) =>
    _$BacInfoImpl(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      nin: json['nin'] as String,
      matricule: json['matricule'] as String,
      nomAr: json['nomAr'] as String,
      prenomAr: json['prenomAr'] as String,
      nomFr: json['nomFr'] as String,
      prenomFr: json['prenomFr'] as String,
      dateNaissance:
          const DateTimeSerializer().fromJson(json['dateNaissance'] as String),
      moyenneBac: const StringToDoubleSerializer()
          .fromJson(json['moyenneBac'] as String),
      refCodeWilayaBac: json['refCodeWilayaBac'] as String,
      refCodeSerieBac: json['refCodeSerieBac'] as String,
      libelleSerieBac: json['libelleSerieBac'] as String,
      anneeBac: json['anneeBac'] as String,
    );

Map<String, dynamic> _$$BacInfoImplToJson(_$BacInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'nin': instance.nin,
      'matricule': instance.matricule,
      'nomAr': instance.nomAr,
      'prenomAr': instance.prenomAr,
      'nomFr': instance.nomFr,
      'prenomFr': instance.prenomFr,
      'dateNaissance':
          const DateTimeSerializer().toJson(instance.dateNaissance),
      'moyenneBac':
          const StringToDoubleSerializer().toJson(instance.moyenneBac),
      'refCodeWilayaBac': instance.refCodeWilayaBac,
      'refCodeSerieBac': instance.refCodeSerieBac,
      'libelleSerieBac': instance.libelleSerieBac,
      'anneeBac': instance.anneeBac,
    };
