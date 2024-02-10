// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcademicYear _$AcademicYearFromJson(Map<String, dynamic> json) {
  return _AcademicYear.fromJson(json);
}

/// @nodoc
mixin _$AcademicYear {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get libelle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcademicYearCopyWith<AcademicYear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicYearCopyWith<$Res> {
  factory $AcademicYearCopyWith(
          AcademicYear value, $Res Function(AcademicYear) then) =
      _$AcademicYearCopyWithImpl<$Res, AcademicYear>;
  @useResult
  $Res call({int id, String code, String? libelle});
}

/// @nodoc
class _$AcademicYearCopyWithImpl<$Res, $Val extends AcademicYear>
    implements $AcademicYearCopyWith<$Res> {
  _$AcademicYearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? libelle = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      libelle: freezed == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademicYearImplCopyWith<$Res>
    implements $AcademicYearCopyWith<$Res> {
  factory _$$AcademicYearImplCopyWith(
          _$AcademicYearImpl value, $Res Function(_$AcademicYearImpl) then) =
      __$$AcademicYearImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String code, String? libelle});
}

/// @nodoc
class __$$AcademicYearImplCopyWithImpl<$Res>
    extends _$AcademicYearCopyWithImpl<$Res, _$AcademicYearImpl>
    implements _$$AcademicYearImplCopyWith<$Res> {
  __$$AcademicYearImplCopyWithImpl(
      _$AcademicYearImpl _value, $Res Function(_$AcademicYearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? libelle = freezed,
  }) {
    return _then(_$AcademicYearImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      libelle: freezed == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcademicYearImpl extends _AcademicYear {
  const _$AcademicYearImpl({required this.id, required this.code, this.libelle})
      : super._();

  factory _$AcademicYearImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcademicYearImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String? libelle;

  @override
  String toString() {
    return 'AcademicYear(id: $id, code: $code, libelle: $libelle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademicYearImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.libelle, libelle) || other.libelle == libelle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, libelle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademicYearImplCopyWith<_$AcademicYearImpl> get copyWith =>
      __$$AcademicYearImplCopyWithImpl<_$AcademicYearImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcademicYearImplToJson(
      this,
    );
  }
}

abstract class _AcademicYear extends AcademicYear {
  const factory _AcademicYear(
      {required final int id,
      required final String code,
      final String? libelle}) = _$AcademicYearImpl;
  const _AcademicYear._() : super._();

  factory _AcademicYear.fromJson(Map<String, dynamic> json) =
      _$AcademicYearImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String? get libelle;
  @override
  @JsonKey(ignore: true)
  _$$AcademicYearImplCopyWith<_$AcademicYearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
