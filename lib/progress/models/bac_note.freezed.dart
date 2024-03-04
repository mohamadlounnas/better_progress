// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bac_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BacNote _$BacNoteFromJson(Map<String, dynamic> json) {
  return _BacNote.fromJson(json);
}

/// @nodoc
mixin _$BacNote {
  double get note => throw _privateConstructorUsedError;
  String get refCodeMatiereLibelleFr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BacNoteCopyWith<BacNote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BacNoteCopyWith<$Res> {
  factory $BacNoteCopyWith(BacNote value, $Res Function(BacNote) then) =
      _$BacNoteCopyWithImpl<$Res, BacNote>;
  @useResult
  $Res call({double note, String refCodeMatiereLibelleFr});
}

/// @nodoc
class _$BacNoteCopyWithImpl<$Res, $Val extends BacNote>
    implements $BacNoteCopyWith<$Res> {
  _$BacNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? refCodeMatiereLibelleFr = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as double,
      refCodeMatiereLibelleFr: null == refCodeMatiereLibelleFr
          ? _value.refCodeMatiereLibelleFr
          : refCodeMatiereLibelleFr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BacNoteImplCopyWith<$Res> implements $BacNoteCopyWith<$Res> {
  factory _$$BacNoteImplCopyWith(
          _$BacNoteImpl value, $Res Function(_$BacNoteImpl) then) =
      __$$BacNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double note, String refCodeMatiereLibelleFr});
}

/// @nodoc
class __$$BacNoteImplCopyWithImpl<$Res>
    extends _$BacNoteCopyWithImpl<$Res, _$BacNoteImpl>
    implements _$$BacNoteImplCopyWith<$Res> {
  __$$BacNoteImplCopyWithImpl(
      _$BacNoteImpl _value, $Res Function(_$BacNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? refCodeMatiereLibelleFr = null,
  }) {
    return _then(_$BacNoteImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as double,
      refCodeMatiereLibelleFr: null == refCodeMatiereLibelleFr
          ? _value.refCodeMatiereLibelleFr
          : refCodeMatiereLibelleFr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BacNoteImpl implements _BacNote {
  _$BacNoteImpl({required this.note, required this.refCodeMatiereLibelleFr});

  factory _$BacNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$BacNoteImplFromJson(json);

  @override
  final double note;
  @override
  final String refCodeMatiereLibelleFr;

  @override
  String toString() {
    return 'BacNote(note: $note, refCodeMatiereLibelleFr: $refCodeMatiereLibelleFr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BacNoteImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(
                    other.refCodeMatiereLibelleFr, refCodeMatiereLibelleFr) ||
                other.refCodeMatiereLibelleFr == refCodeMatiereLibelleFr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, note, refCodeMatiereLibelleFr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BacNoteImplCopyWith<_$BacNoteImpl> get copyWith =>
      __$$BacNoteImplCopyWithImpl<_$BacNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BacNoteImplToJson(
      this,
    );
  }
}

abstract class _BacNote implements BacNote {
  factory _BacNote(
      {required final double note,
      required final String refCodeMatiereLibelleFr}) = _$BacNoteImpl;

  factory _BacNote.fromJson(Map<String, dynamic> json) = _$BacNoteImpl.fromJson;

  @override
  double get note;
  @override
  String get refCodeMatiereLibelleFr;
  @override
  @JsonKey(ignore: true)
  _$$BacNoteImplCopyWith<_$BacNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
