// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  int get id => throw _privateConstructorUsedError;
  int get groupePedagogiqueId => throw _privateConstructorUsedError;
  String get nomGroupePedagogique => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get dateAffectation => throw _privateConstructorUsedError;
  int get periodeId => throw _privateConstructorUsedError;
  String get periodeCode => throw _privateConstructorUsedError;
  String get periodeLibelleLongLt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {int id,
      int groupePedagogiqueId,
      String nomGroupePedagogique,
      @DateTimeSerializer() DateTime dateAffectation,
      int periodeId,
      String periodeCode,
      String periodeLibelleLongLt});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupePedagogiqueId = null,
    Object? nomGroupePedagogique = null,
    Object? dateAffectation = null,
    Object? periodeId = null,
    Object? periodeCode = null,
    Object? periodeLibelleLongLt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupePedagogiqueId: null == groupePedagogiqueId
          ? _value.groupePedagogiqueId
          : groupePedagogiqueId // ignore: cast_nullable_to_non_nullable
              as int,
      nomGroupePedagogique: null == nomGroupePedagogique
          ? _value.nomGroupePedagogique
          : nomGroupePedagogique // ignore: cast_nullable_to_non_nullable
              as String,
      dateAffectation: null == dateAffectation
          ? _value.dateAffectation
          : dateAffectation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodeId: null == periodeId
          ? _value.periodeId
          : periodeId // ignore: cast_nullable_to_non_nullable
              as int,
      periodeCode: null == periodeCode
          ? _value.periodeCode
          : periodeCode // ignore: cast_nullable_to_non_nullable
              as String,
      periodeLibelleLongLt: null == periodeLibelleLongLt
          ? _value.periodeLibelleLongLt
          : periodeLibelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int groupePedagogiqueId,
      String nomGroupePedagogique,
      @DateTimeSerializer() DateTime dateAffectation,
      int periodeId,
      String periodeCode,
      String periodeLibelleLongLt});
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupePedagogiqueId = null,
    Object? nomGroupePedagogique = null,
    Object? dateAffectation = null,
    Object? periodeId = null,
    Object? periodeCode = null,
    Object? periodeLibelleLongLt = null,
  }) {
    return _then(_$GroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupePedagogiqueId: null == groupePedagogiqueId
          ? _value.groupePedagogiqueId
          : groupePedagogiqueId // ignore: cast_nullable_to_non_nullable
              as int,
      nomGroupePedagogique: null == nomGroupePedagogique
          ? _value.nomGroupePedagogique
          : nomGroupePedagogique // ignore: cast_nullable_to_non_nullable
              as String,
      dateAffectation: null == dateAffectation
          ? _value.dateAffectation
          : dateAffectation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      periodeId: null == periodeId
          ? _value.periodeId
          : periodeId // ignore: cast_nullable_to_non_nullable
              as int,
      periodeCode: null == periodeCode
          ? _value.periodeCode
          : periodeCode // ignore: cast_nullable_to_non_nullable
              as String,
      periodeLibelleLongLt: null == periodeLibelleLongLt
          ? _value.periodeLibelleLongLt
          : periodeLibelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl implements _Group {
  _$GroupImpl(
      {required this.id,
      required this.groupePedagogiqueId,
      required this.nomGroupePedagogique,
      @DateTimeSerializer() required this.dateAffectation,
      required this.periodeId,
      required this.periodeCode,
      required this.periodeLibelleLongLt});

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  @override
  final int id;
  @override
  final int groupePedagogiqueId;
  @override
  final String nomGroupePedagogique;
  @override
  @DateTimeSerializer()
  final DateTime dateAffectation;
  @override
  final int periodeId;
  @override
  final String periodeCode;
  @override
  final String periodeLibelleLongLt;

  @override
  String toString() {
    return 'Group(id: $id, groupePedagogiqueId: $groupePedagogiqueId, nomGroupePedagogique: $nomGroupePedagogique, dateAffectation: $dateAffectation, periodeId: $periodeId, periodeCode: $periodeCode, periodeLibelleLongLt: $periodeLibelleLongLt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupePedagogiqueId, groupePedagogiqueId) ||
                other.groupePedagogiqueId == groupePedagogiqueId) &&
            (identical(other.nomGroupePedagogique, nomGroupePedagogique) ||
                other.nomGroupePedagogique == nomGroupePedagogique) &&
            (identical(other.dateAffectation, dateAffectation) ||
                other.dateAffectation == dateAffectation) &&
            (identical(other.periodeId, periodeId) ||
                other.periodeId == periodeId) &&
            (identical(other.periodeCode, periodeCode) ||
                other.periodeCode == periodeCode) &&
            (identical(other.periodeLibelleLongLt, periodeLibelleLongLt) ||
                other.periodeLibelleLongLt == periodeLibelleLongLt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      groupePedagogiqueId,
      nomGroupePedagogique,
      dateAffectation,
      periodeId,
      periodeCode,
      periodeLibelleLongLt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group implements Group {
  factory _Group(
      {required final int id,
      required final int groupePedagogiqueId,
      required final String nomGroupePedagogique,
      @DateTimeSerializer() required final DateTime dateAffectation,
      required final int periodeId,
      required final String periodeCode,
      required final String periodeLibelleLongLt}) = _$GroupImpl;

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override
  int get id;
  @override
  int get groupePedagogiqueId;
  @override
  String get nomGroupePedagogique;
  @override
  @DateTimeSerializer()
  DateTime get dateAffectation;
  @override
  int get periodeId;
  @override
  String get periodeCode;
  @override
  String get periodeLibelleLongLt;
  @override
  @JsonKey(ignore: true)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
