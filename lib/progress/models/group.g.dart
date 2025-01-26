// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      id: (json['id'] as num).toInt(),
      groupePedagogiqueId: (json['groupePedagogiqueId'] as num).toInt(),
      nomGroupePedagogique: json['nomGroupePedagogique'] as String,
      dateAffectation: const DateTimeSerializer()
          .fromJson(json['dateAffectation'] as String),
      periodeId: (json['periodeId'] as num).toInt(),
      periodeCode: json['periodeCode'] as String,
      periodeLibelleLongLt: json['periodeLibelleLongLt'] as String,
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupePedagogiqueId': instance.groupePedagogiqueId,
      'nomGroupePedagogique': instance.nomGroupePedagogique,
      'dateAffectation':
          const DateTimeSerializer().toJson(instance.dateAffectation),
      'periodeId': instance.periodeId,
      'periodeCode': instance.periodeCode,
      'periodeLibelleLongLt': instance.periodeLibelleLongLt,
    };
