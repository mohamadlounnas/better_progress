// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExamSchedule _$ExamScheduleFromJson(Map<String, dynamic> json) {
  return _ExamSchedule.fromJson(json);
}

/// @nodoc
mixin _$ExamSchedule {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamScheduleCopyWith<ExamSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamScheduleCopyWith<$Res> {
  factory $ExamScheduleCopyWith(
          ExamSchedule value, $Res Function(ExamSchedule) then) =
      _$ExamScheduleCopyWithImpl<$Res, ExamSchedule>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ExamScheduleCopyWithImpl<$Res, $Val extends ExamSchedule>
    implements $ExamScheduleCopyWith<$Res> {
  _$ExamScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamScheduleImplCopyWith<$Res>
    implements $ExamScheduleCopyWith<$Res> {
  factory _$$ExamScheduleImplCopyWith(
          _$ExamScheduleImpl value, $Res Function(_$ExamScheduleImpl) then) =
      __$$ExamScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ExamScheduleImplCopyWithImpl<$Res>
    extends _$ExamScheduleCopyWithImpl<$Res, _$ExamScheduleImpl>
    implements _$$ExamScheduleImplCopyWith<$Res> {
  __$$ExamScheduleImplCopyWithImpl(
      _$ExamScheduleImpl _value, $Res Function(_$ExamScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ExamScheduleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamScheduleImpl extends _ExamSchedule {
  const _$ExamScheduleImpl({required this.id}) : super._();

  factory _$ExamScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamScheduleImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ExamSchedule(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamScheduleImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamScheduleImplCopyWith<_$ExamScheduleImpl> get copyWith =>
      __$$ExamScheduleImplCopyWithImpl<_$ExamScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamScheduleImplToJson(
      this,
    );
  }
}

abstract class _ExamSchedule extends ExamSchedule {
  const factory _ExamSchedule({required final int id}) = _$ExamScheduleImpl;
  const _ExamSchedule._() : super._();

  factory _ExamSchedule.fromJson(Map<String, dynamic> json) =
      _$ExamScheduleImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ExamScheduleImplCopyWith<_$ExamScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
