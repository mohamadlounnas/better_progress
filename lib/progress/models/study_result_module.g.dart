// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_result_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyResultModuleImpl _$$StudyResultModuleImplFromJson(
        Map<String, dynamic> json) =>
    _$StudyResultModuleImpl(
      id: (json['id'] as num).toInt(),
      bilanUeId: (json['bilanUeId'] as num).toInt(),
      bilanSessionId: (json['bilanSessionId'] as num).toInt(),
      rattachementMcId: (json['rattachementMcId'] as num).toInt(),
      mcLibelleFr: json['mcLibelleFr'] as String,
      mcLibelleAr: json['mcLibelleAr'] as String,
      mcCode: json['mcCode'] as String,
      coefficient: (json['coefficient'] as num).toDouble(),
      credit: (json['credit'] as num).toDouble(),
      creditObtenu: (json['creditObtenu'] as num).toDouble(),
      moyenneGenerale: (json['moyenneGenerale'] as num).toDouble(),
    );

Map<String, dynamic> _$$StudyResultModuleImplToJson(
        _$StudyResultModuleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bilanUeId': instance.bilanUeId,
      'bilanSessionId': instance.bilanSessionId,
      'rattachementMcId': instance.rattachementMcId,
      'mcLibelleFr': instance.mcLibelleFr,
      'mcLibelleAr': instance.mcLibelleAr,
      'mcCode': instance.mcCode,
      'coefficient': instance.coefficient,
      'credit': instance.credit,
      'creditObtenu': instance.creditObtenu,
      'moyenneGenerale': instance.moyenneGenerale,
    };
