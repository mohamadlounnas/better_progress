// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyResultImpl _$$StudyResultImplFromJson(Map<String, dynamic> json) =>
    _$StudyResultImpl(
      id: json['id'] as int,
      type: json['type'] as int,
      periodeId: json['periodeId'] as int,
      periodeLibelleFr: json['periodeLibelleFr'] as String,
      periodeLibelleAr: json['periodeLibelleAr'] as String,
      bilanUes: (json['bilanUes'] as List<dynamic>)
          .map((e) => StudyResultGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      moyenne: (json['moyenne'] as num).toDouble(),
      moyenneSn: (json['moyenneSn'] as num).toDouble(),
      credit: (json['credit'] as num).toDouble(),
      creditObtenu: (json['creditObtenu'] as num).toDouble(),
      creditAcquis: (json['creditAcquis'] as num).toDouble(),
      annuel: json['annuel'] as bool,
      cycleLibelleLongLt: json['cycleLibelleLongLt'] as String,
      niveauCode: json['niveauCode'] as String,
      niveauRang: json['niveauRang'] as int,
      niveauLibelleLongLt: json['niveauLibelleLongLt'] as String,
      niveauLibelleLongAr: json['niveauLibelleLongAr'] as String,
      totalAquis: json['totalAquis'] as int,
      effectif: json['effectif'] as int,
      coefficient: (json['coefficient'] as num).toDouble(),
    );

Map<String, dynamic> _$$StudyResultImplToJson(_$StudyResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'periodeId': instance.periodeId,
      'periodeLibelleFr': instance.periodeLibelleFr,
      'periodeLibelleAr': instance.periodeLibelleAr,
      'bilanUes': instance.bilanUes,
      'moyenne': instance.moyenne,
      'moyenneSn': instance.moyenneSn,
      'credit': instance.credit,
      'creditObtenu': instance.creditObtenu,
      'creditAcquis': instance.creditAcquis,
      'annuel': instance.annuel,
      'cycleLibelleLongLt': instance.cycleLibelleLongLt,
      'niveauCode': instance.niveauCode,
      'niveauRang': instance.niveauRang,
      'niveauLibelleLongLt': instance.niveauLibelleLongLt,
      'niveauLibelleLongAr': instance.niveauLibelleLongAr,
      'totalAquis': instance.totalAquis,
      'effectif': instance.effectif,
      'coefficient': instance.coefficient,
    };
