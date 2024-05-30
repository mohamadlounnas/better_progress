// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  HomeModelData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call({HomeModelData data});

  $HomeModelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeModelData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelDataCopyWith<$Res> get data {
    return $HomeModelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeModelData data});

  @override
  $HomeModelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HomeModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeModelData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl({required this.data});

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  final HomeModelData data;

  @override
  String toString() {
    return 'HomeModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel({required final HomeModelData data}) =
      _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  HomeModelData get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeModelData _$HomeModelDataFromJson(Map<String, dynamic> json) {
  return _HomeModelData.fromJson(json);
}

/// @nodoc
mixin _$HomeModelData {
  int get id => throw _privateConstructorUsedError;
  HomeModelAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelDataCopyWith<HomeModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelDataCopyWith<$Res> {
  factory $HomeModelDataCopyWith(
          HomeModelData value, $Res Function(HomeModelData) then) =
      _$HomeModelDataCopyWithImpl<$Res, HomeModelData>;
  @useResult
  $Res call({int id, HomeModelAttributes attributes});

  $HomeModelAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$HomeModelDataCopyWithImpl<$Res, $Val extends HomeModelData>
    implements $HomeModelDataCopyWith<$Res> {
  _$HomeModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as HomeModelAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelAttributesCopyWith<$Res> get attributes {
    return $HomeModelAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelDataImplCopyWith<$Res>
    implements $HomeModelDataCopyWith<$Res> {
  factory _$$HomeModelDataImplCopyWith(
          _$HomeModelDataImpl value, $Res Function(_$HomeModelDataImpl) then) =
      __$$HomeModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, HomeModelAttributes attributes});

  @override
  $HomeModelAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$HomeModelDataImplCopyWithImpl<$Res>
    extends _$HomeModelDataCopyWithImpl<$Res, _$HomeModelDataImpl>
    implements _$$HomeModelDataImplCopyWith<$Res> {
  __$$HomeModelDataImplCopyWithImpl(
      _$HomeModelDataImpl _value, $Res Function(_$HomeModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$HomeModelDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as HomeModelAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelDataImpl implements _HomeModelData {
  const _$HomeModelDataImpl({required this.id, required this.attributes});

  factory _$HomeModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelDataImplFromJson(json);

  @override
  final int id;
  @override
  final HomeModelAttributes attributes;

  @override
  String toString() {
    return 'HomeModelData(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelDataImplCopyWith<_$HomeModelDataImpl> get copyWith =>
      __$$HomeModelDataImplCopyWithImpl<_$HomeModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelDataImplToJson(
      this,
    );
  }
}

abstract class _HomeModelData implements HomeModelData {
  const factory _HomeModelData(
      {required final int id,
      required final HomeModelAttributes attributes}) = _$HomeModelDataImpl;

  factory _HomeModelData.fromJson(Map<String, dynamic> json) =
      _$HomeModelDataImpl.fromJson;

  @override
  int get id;
  @override
  HomeModelAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelDataImplCopyWith<_$HomeModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeModelAttributes _$HomeModelAttributesFromJson(Map<String, dynamic> json) {
  return _HomeModelAttributes.fromJson(json);
}

/// @nodoc
mixin _$HomeModelAttributes {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String? get actionUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  int get students => throw _privateConstructorUsedError;
  int get courses => throw _privateConstructorUsedError;
  List<HomeModelMentors> get mentors => throw _privateConstructorUsedError;
  List<HomeModelSections> get sections => throw _privateConstructorUsedError;
  List<HomeModelOpinions> get opinions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelAttributesCopyWith<HomeModelAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelAttributesCopyWith<$Res> {
  factory $HomeModelAttributesCopyWith(
          HomeModelAttributes value, $Res Function(HomeModelAttributes) then) =
      _$HomeModelAttributesCopyWithImpl<$Res, HomeModelAttributes>;
  @useResult
  $Res call(
      {String title,
      String description,
      String createdAt,
      String updatedAt,
      String publishedAt,
      String? actionUrl,
      String? videoUrl,
      int students,
      int courses,
      List<HomeModelMentors> mentors,
      List<HomeModelSections> sections,
      List<HomeModelOpinions> opinions});
}

/// @nodoc
class _$HomeModelAttributesCopyWithImpl<$Res, $Val extends HomeModelAttributes>
    implements $HomeModelAttributesCopyWith<$Res> {
  _$HomeModelAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? actionUrl = freezed,
    Object? videoUrl = freezed,
    Object? students = null,
    Object? courses = null,
    Object? mentors = null,
    Object? sections = null,
    Object? opinions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as int,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as int,
      mentors: null == mentors
          ? _value.mentors
          : mentors // ignore: cast_nullable_to_non_nullable
              as List<HomeModelMentors>,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<HomeModelSections>,
      opinions: null == opinions
          ? _value.opinions
          : opinions // ignore: cast_nullable_to_non_nullable
              as List<HomeModelOpinions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelAttributesImplCopyWith<$Res>
    implements $HomeModelAttributesCopyWith<$Res> {
  factory _$$HomeModelAttributesImplCopyWith(_$HomeModelAttributesImpl value,
          $Res Function(_$HomeModelAttributesImpl) then) =
      __$$HomeModelAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String createdAt,
      String updatedAt,
      String publishedAt,
      String? actionUrl,
      String? videoUrl,
      int students,
      int courses,
      List<HomeModelMentors> mentors,
      List<HomeModelSections> sections,
      List<HomeModelOpinions> opinions});
}

/// @nodoc
class __$$HomeModelAttributesImplCopyWithImpl<$Res>
    extends _$HomeModelAttributesCopyWithImpl<$Res, _$HomeModelAttributesImpl>
    implements _$$HomeModelAttributesImplCopyWith<$Res> {
  __$$HomeModelAttributesImplCopyWithImpl(_$HomeModelAttributesImpl _value,
      $Res Function(_$HomeModelAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? actionUrl = freezed,
    Object? videoUrl = freezed,
    Object? students = null,
    Object? courses = null,
    Object? mentors = null,
    Object? sections = null,
    Object? opinions = null,
  }) {
    return _then(_$HomeModelAttributesImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      actionUrl: freezed == actionUrl
          ? _value.actionUrl
          : actionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as int,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as int,
      mentors: null == mentors
          ? _value._mentors
          : mentors // ignore: cast_nullable_to_non_nullable
              as List<HomeModelMentors>,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<HomeModelSections>,
      opinions: null == opinions
          ? _value._opinions
          : opinions // ignore: cast_nullable_to_non_nullable
              as List<HomeModelOpinions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelAttributesImpl implements _HomeModelAttributes {
  const _$HomeModelAttributesImpl(
      {required this.title,
      required this.description,
      required this.createdAt,
      required this.updatedAt,
      required this.publishedAt,
      required this.actionUrl,
      required this.videoUrl,
      required this.students,
      required this.courses,
      required final List<HomeModelMentors> mentors,
      required final List<HomeModelSections> sections,
      required final List<HomeModelOpinions> opinions})
      : _mentors = mentors,
        _sections = sections,
        _opinions = opinions;

  factory _$HomeModelAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelAttributesImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String publishedAt;
  @override
  final String? actionUrl;
  @override
  final String? videoUrl;
  @override
  final int students;
  @override
  final int courses;
  final List<HomeModelMentors> _mentors;
  @override
  List<HomeModelMentors> get mentors {
    if (_mentors is EqualUnmodifiableListView) return _mentors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentors);
  }

  final List<HomeModelSections> _sections;
  @override
  List<HomeModelSections> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  final List<HomeModelOpinions> _opinions;
  @override
  List<HomeModelOpinions> get opinions {
    if (_opinions is EqualUnmodifiableListView) return _opinions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_opinions);
  }

  @override
  String toString() {
    return 'HomeModelAttributes(title: $title, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, actionUrl: $actionUrl, videoUrl: $videoUrl, students: $students, courses: $courses, mentors: $mentors, sections: $sections, opinions: $opinions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelAttributesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.actionUrl, actionUrl) ||
                other.actionUrl == actionUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.students, students) ||
                other.students == students) &&
            (identical(other.courses, courses) || other.courses == courses) &&
            const DeepCollectionEquality().equals(other._mentors, _mentors) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality().equals(other._opinions, _opinions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      createdAt,
      updatedAt,
      publishedAt,
      actionUrl,
      videoUrl,
      students,
      courses,
      const DeepCollectionEquality().hash(_mentors),
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(_opinions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelAttributesImplCopyWith<_$HomeModelAttributesImpl> get copyWith =>
      __$$HomeModelAttributesImplCopyWithImpl<_$HomeModelAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelAttributesImplToJson(
      this,
    );
  }
}

abstract class _HomeModelAttributes implements HomeModelAttributes {
  const factory _HomeModelAttributes(
          {required final String title,
          required final String description,
          required final String createdAt,
          required final String updatedAt,
          required final String publishedAt,
          required final String? actionUrl,
          required final String? videoUrl,
          required final int students,
          required final int courses,
          required final List<HomeModelMentors> mentors,
          required final List<HomeModelSections> sections,
          required final List<HomeModelOpinions> opinions}) =
      _$HomeModelAttributesImpl;

  factory _HomeModelAttributes.fromJson(Map<String, dynamic> json) =
      _$HomeModelAttributesImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get publishedAt;
  @override
  String? get actionUrl;
  @override
  String? get videoUrl;
  @override
  int get students;
  @override
  int get courses;
  @override
  List<HomeModelMentors> get mentors;
  @override
  List<HomeModelSections> get sections;
  @override
  List<HomeModelOpinions> get opinions;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelAttributesImplCopyWith<_$HomeModelAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeModelMentors _$HomeModelMentorsFromJson(Map<String, dynamic> json) {
  return _HomeModelMentors.fromJson(json);
}

/// @nodoc
mixin _$HomeModelMentors {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get field => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelMentorsCopyWith<HomeModelMentors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelMentorsCopyWith<$Res> {
  factory $HomeModelMentorsCopyWith(
          HomeModelMentors value, $Res Function(HomeModelMentors) then) =
      _$HomeModelMentorsCopyWithImpl<$Res, HomeModelMentors>;
  @useResult
  $Res call({int id, String name, String field, String bio});
}

/// @nodoc
class _$HomeModelMentorsCopyWithImpl<$Res, $Val extends HomeModelMentors>
    implements $HomeModelMentorsCopyWith<$Res> {
  _$HomeModelMentorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? field = null,
    Object? bio = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelMentorsImplCopyWith<$Res>
    implements $HomeModelMentorsCopyWith<$Res> {
  factory _$$HomeModelMentorsImplCopyWith(_$HomeModelMentorsImpl value,
          $Res Function(_$HomeModelMentorsImpl) then) =
      __$$HomeModelMentorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String field, String bio});
}

/// @nodoc
class __$$HomeModelMentorsImplCopyWithImpl<$Res>
    extends _$HomeModelMentorsCopyWithImpl<$Res, _$HomeModelMentorsImpl>
    implements _$$HomeModelMentorsImplCopyWith<$Res> {
  __$$HomeModelMentorsImplCopyWithImpl(_$HomeModelMentorsImpl _value,
      $Res Function(_$HomeModelMentorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? field = null,
    Object? bio = null,
  }) {
    return _then(_$HomeModelMentorsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelMentorsImpl implements _HomeModelMentors {
  const _$HomeModelMentorsImpl(
      {required this.id,
      required this.name,
      required this.field,
      required this.bio});

  factory _$HomeModelMentorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelMentorsImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String field;
  @override
  final String bio;

  @override
  String toString() {
    return 'HomeModelMentors(id: $id, name: $name, field: $field, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelMentorsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, field, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelMentorsImplCopyWith<_$HomeModelMentorsImpl> get copyWith =>
      __$$HomeModelMentorsImplCopyWithImpl<_$HomeModelMentorsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelMentorsImplToJson(
      this,
    );
  }
}

abstract class _HomeModelMentors implements HomeModelMentors {
  const factory _HomeModelMentors(
      {required final int id,
      required final String name,
      required final String field,
      required final String bio}) = _$HomeModelMentorsImpl;

  factory _HomeModelMentors.fromJson(Map<String, dynamic> json) =
      _$HomeModelMentorsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get field;
  @override
  String get bio;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelMentorsImplCopyWith<_$HomeModelMentorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeModelSections _$HomeModelSectionsFromJson(Map<String, dynamic> json) {
  return _HomeModelSections.fromJson(json);
}

/// @nodoc
mixin _$HomeModelSections {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelSectionsCopyWith<HomeModelSections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelSectionsCopyWith<$Res> {
  factory $HomeModelSectionsCopyWith(
          HomeModelSections value, $Res Function(HomeModelSections) then) =
      _$HomeModelSectionsCopyWithImpl<$Res, HomeModelSections>;
  @useResult
  $Res call({int id, String title, String description});
}

/// @nodoc
class _$HomeModelSectionsCopyWithImpl<$Res, $Val extends HomeModelSections>
    implements $HomeModelSectionsCopyWith<$Res> {
  _$HomeModelSectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelSectionsImplCopyWith<$Res>
    implements $HomeModelSectionsCopyWith<$Res> {
  factory _$$HomeModelSectionsImplCopyWith(_$HomeModelSectionsImpl value,
          $Res Function(_$HomeModelSectionsImpl) then) =
      __$$HomeModelSectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description});
}

/// @nodoc
class __$$HomeModelSectionsImplCopyWithImpl<$Res>
    extends _$HomeModelSectionsCopyWithImpl<$Res, _$HomeModelSectionsImpl>
    implements _$$HomeModelSectionsImplCopyWith<$Res> {
  __$$HomeModelSectionsImplCopyWithImpl(_$HomeModelSectionsImpl _value,
      $Res Function(_$HomeModelSectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$HomeModelSectionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelSectionsImpl implements _HomeModelSections {
  const _$HomeModelSectionsImpl(
      {required this.id, required this.title, required this.description});

  factory _$HomeModelSectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelSectionsImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'HomeModelSections(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelSectionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelSectionsImplCopyWith<_$HomeModelSectionsImpl> get copyWith =>
      __$$HomeModelSectionsImplCopyWithImpl<_$HomeModelSectionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelSectionsImplToJson(
      this,
    );
  }
}

abstract class _HomeModelSections implements HomeModelSections {
  const factory _HomeModelSections(
      {required final int id,
      required final String title,
      required final String description}) = _$HomeModelSectionsImpl;

  factory _HomeModelSections.fromJson(Map<String, dynamic> json) =
      _$HomeModelSectionsImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelSectionsImplCopyWith<_$HomeModelSectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeModelOpinions _$HomeModelOpinionsFromJson(Map<String, dynamic> json) {
  return _HomeModelOpinions.fromJson(json);
}

/// @nodoc
mixin _$HomeModelOpinions {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelOpinionsCopyWith<HomeModelOpinions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelOpinionsCopyWith<$Res> {
  factory $HomeModelOpinionsCopyWith(
          HomeModelOpinions value, $Res Function(HomeModelOpinions) then) =
      _$HomeModelOpinionsCopyWithImpl<$Res, HomeModelOpinions>;
  @useResult
  $Res call({int id, String name, String comment});
}

/// @nodoc
class _$HomeModelOpinionsCopyWithImpl<$Res, $Val extends HomeModelOpinions>
    implements $HomeModelOpinionsCopyWith<$Res> {
  _$HomeModelOpinionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelOpinionsImplCopyWith<$Res>
    implements $HomeModelOpinionsCopyWith<$Res> {
  factory _$$HomeModelOpinionsImplCopyWith(_$HomeModelOpinionsImpl value,
          $Res Function(_$HomeModelOpinionsImpl) then) =
      __$$HomeModelOpinionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String comment});
}

/// @nodoc
class __$$HomeModelOpinionsImplCopyWithImpl<$Res>
    extends _$HomeModelOpinionsCopyWithImpl<$Res, _$HomeModelOpinionsImpl>
    implements _$$HomeModelOpinionsImplCopyWith<$Res> {
  __$$HomeModelOpinionsImplCopyWithImpl(_$HomeModelOpinionsImpl _value,
      $Res Function(_$HomeModelOpinionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_$HomeModelOpinionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelOpinionsImpl implements _HomeModelOpinions {
  const _$HomeModelOpinionsImpl(
      {required this.id, required this.name, required this.comment});

  factory _$HomeModelOpinionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelOpinionsImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String comment;

  @override
  String toString() {
    return 'HomeModelOpinions(id: $id, name: $name, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelOpinionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelOpinionsImplCopyWith<_$HomeModelOpinionsImpl> get copyWith =>
      __$$HomeModelOpinionsImplCopyWithImpl<_$HomeModelOpinionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelOpinionsImplToJson(
      this,
    );
  }
}

abstract class _HomeModelOpinions implements HomeModelOpinions {
  const factory _HomeModelOpinions(
      {required final int id,
      required final String name,
      required final String comment}) = _$HomeModelOpinionsImpl;

  factory _HomeModelOpinions.fromJson(Map<String, dynamic> json) =
      _$HomeModelOpinionsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelOpinionsImplCopyWith<_$HomeModelOpinionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
