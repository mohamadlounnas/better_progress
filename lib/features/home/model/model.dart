import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required HomeModelData data,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
}

@freezed
class HomeModelData with _$HomeModelData {
  const factory HomeModelData({
    required int id,
    required HomeModelAttributes attributes,
  }) = _HomeModelData;

  factory HomeModelData.fromJson(Map<String, dynamic> json) => _$HomeModelDataFromJson(json);
}

@freezed
class HomeModelAttributes with _$HomeModelAttributes {
  const factory HomeModelAttributes({
    required String title,
    required String description,
    required String createdAt,
    required String updatedAt,
    required String publishedAt,
    required String? actionUrl,
    required String? videoUrl,
    required int students,
    required int courses,
    required List<HomeModelMentors> mentors,
    required List<HomeModelSections> sections,
    required List<HomeModelOpinions> opinions,
  }) = _HomeModelAttributes;

  factory HomeModelAttributes.fromJson(Map<String, dynamic> json) => _$HomeModelAttributesFromJson(json);
}

@freezed
class HomeModelMentors with _$HomeModelMentors {
  const factory HomeModelMentors({
    required int id,
    required String name,
    required String field,
    required String bio,
  }) = _HomeModelMentors;

  factory HomeModelMentors.fromJson(Map<String, dynamic> json) => _$HomeModelMentorsFromJson(json);
}

@freezed
class HomeModelSections with _$HomeModelSections {
  const factory HomeModelSections({
    required int id,
    required String title,
    required String description,
  }) = _HomeModelSections;

  factory HomeModelSections.fromJson(Map<String, dynamic> json) => _$HomeModelSectionsFromJson(json);
}

@freezed
class HomeModelOpinions with _$HomeModelOpinions {
  const factory HomeModelOpinions({
    required int id,
    required String name,
    required String comment,
  }) = _HomeModelOpinions;

  factory HomeModelOpinions.fromJson(Map<String, dynamic> json) => _$HomeModelOpinionsFromJson(json);
}
    