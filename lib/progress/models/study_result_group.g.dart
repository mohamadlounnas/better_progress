// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_result_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyResultGroupImpl _$$StudyResultGroupImplFromJson(
        Map<String, dynamic> json) =>
    _$StudyResultGroupImpl(
      id: json['id'] as int,
      bilanSessionId: json['bilanSessionId'] as int,
      repartitionUeId: json['repartitionUeId'] as int,
      ueLibelleFr: json['ueLibelleFr'] as String,
      ueCode: json['ueCode'] as String,
      ueType: json['ueType'] as String,
      moyenne: (json['moyenne'] as num).toDouble(),
      coefficient: (json['coefficient'] as num).toDouble(),
      credit: (json['credit'] as num).toDouble(),
      creditObtenu: (json['creditObtenu'] as num).toDouble(),
      creditAcquis: (json['creditAcquis'] as num).toDouble(),
      ueNatureLcFr: json['ueNatureLcFr'] as String,
      ueNatureLcAr: json['ueNatureLcAr'] as String,
      ueNatureCode: json['ueNatureCode'] as String,
      bilanMcs: (json['bilanMcs'] as List<dynamic>)
          .map((e) => StudyResultModule.fromJson(e as Map<String, dynamic>))
          .toList(),
      ueNoteObtention: (json['ueNoteObtention'] as num).toDouble(),
      ueAcquis: json['ueAcquis'] as bool,
      totalAquis: json['totalAquis'] as int,
      effectif: json['effectif'] as int,
    );

Map<String, dynamic> _$$StudyResultGroupImplToJson(
        _$StudyResultGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bilanSessionId': instance.bilanSessionId,
      'repartitionUeId': instance.repartitionUeId,
      'ueLibelleFr': instance.ueLibelleFr,
      'ueCode': instance.ueCode,
      'ueType': instance.ueType,
      'moyenne': instance.moyenne,
      'coefficient': instance.coefficient,
      'credit': instance.credit,
      'creditObtenu': instance.creditObtenu,
      'creditAcquis': instance.creditAcquis,
      'ueNatureLcFr': instance.ueNatureLcFr,
      'ueNatureLcAr': instance.ueNatureLcAr,
      'ueNatureCode': instance.ueNatureCode,
      'bilanMcs': instance.bilanMcs,
      'ueNoteObtention': instance.ueNoteObtention,
      'ueAcquis': instance.ueAcquis,
      'totalAquis': instance.totalAquis,
      'effectif': instance.effectif,
    };
