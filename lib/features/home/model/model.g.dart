// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      data: HomeModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$HomeModelDataImpl _$$HomeModelDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelDataImpl(
      id: json['id'] as int,
      attributes: HomeModelAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeModelDataImplToJson(_$HomeModelDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$HomeModelAttributesImpl _$$HomeModelAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeModelAttributesImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      publishedAt: json['publishedAt'] as String,
      actionUrl: json['actionUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      students: json['students'] as int,
      courses: json['courses'] as int,
      mentors: (json['mentors'] as List<dynamic>)
          .map((e) => HomeModelMentors.fromJson(e as Map<String, dynamic>))
          .toList(),
      sections: (json['sections'] as List<dynamic>)
          .map((e) => HomeModelSections.fromJson(e as Map<String, dynamic>))
          .toList(),
      opinions: (json['opinions'] as List<dynamic>)
          .map((e) => HomeModelOpinions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeModelAttributesImplToJson(
        _$HomeModelAttributesImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'actionUrl': instance.actionUrl,
      'videoUrl': instance.videoUrl,
      'students': instance.students,
      'courses': instance.courses,
      'mentors': instance.mentors,
      'sections': instance.sections,
      'opinions': instance.opinions,
    };

_$HomeModelMentorsImpl _$$HomeModelMentorsImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeModelMentorsImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      field: json['field'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$$HomeModelMentorsImplToJson(
        _$HomeModelMentorsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'field': instance.field,
      'bio': instance.bio,
    };

_$HomeModelSectionsImpl _$$HomeModelSectionsImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeModelSectionsImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$HomeModelSectionsImplToJson(
        _$HomeModelSectionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

_$HomeModelOpinionsImpl _$$HomeModelOpinionsImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeModelOpinionsImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$HomeModelOpinionsImplToJson(
        _$HomeModelOpinionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
    };
