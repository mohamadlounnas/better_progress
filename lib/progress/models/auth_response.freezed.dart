// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  @DateTimeSerializer()
  DateTime get expirationDate => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get idIndividu => throw _privateConstructorUsedError;
  int get etablissementId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call(
      {@DateTimeSerializer() DateTime expirationDate,
      String token,
      String uuid,
      int userId,
      int idIndividu,
      int etablissementId,
      String userName});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expirationDate = null,
    Object? token = null,
    Object? uuid = null,
    Object? userId = null,
    Object? idIndividu = null,
    Object? etablissementId = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      idIndividu: null == idIndividu
          ? _value.idIndividu
          : idIndividu // ignore: cast_nullable_to_non_nullable
              as int,
      etablissementId: null == etablissementId
          ? _value.etablissementId
          : etablissementId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeSerializer() DateTime expirationDate,
      String token,
      String uuid,
      int userId,
      int idIndividu,
      int etablissementId,
      String userName});
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expirationDate = null,
    Object? token = null,
    Object? uuid = null,
    Object? userId = null,
    Object? idIndividu = null,
    Object? etablissementId = null,
    Object? userName = null,
  }) {
    return _then(_$AuthResponseImpl(
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      idIndividu: null == idIndividu
          ? _value.idIndividu
          : idIndividu // ignore: cast_nullable_to_non_nullable
              as int,
      etablissementId: null == etablissementId
          ? _value.etablissementId
          : etablissementId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl extends _AuthResponse {
  const _$AuthResponseImpl(
      {@DateTimeSerializer() required this.expirationDate,
      required this.token,
      required this.uuid,
      required this.userId,
      required this.idIndividu,
      required this.etablissementId,
      required this.userName})
      : super._();

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  @DateTimeSerializer()
  final DateTime expirationDate;
  @override
  final String token;
  @override
  final String uuid;
  @override
  final int userId;
  @override
  final int idIndividu;
  @override
  final int etablissementId;
  @override
  final String userName;

  @override
  String toString() {
    return 'AuthResponse(expirationDate: $expirationDate, token: $token, uuid: $uuid, userId: $userId, idIndividu: $idIndividu, etablissementId: $etablissementId, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.idIndividu, idIndividu) ||
                other.idIndividu == idIndividu) &&
            (identical(other.etablissementId, etablissementId) ||
                other.etablissementId == etablissementId) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expirationDate, token, uuid,
      userId, idIndividu, etablissementId, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthResponse extends AuthResponse {
  const factory _AuthResponse(
      {@DateTimeSerializer() required final DateTime expirationDate,
      required final String token,
      required final String uuid,
      required final int userId,
      required final int idIndividu,
      required final int etablissementId,
      required final String userName}) = _$AuthResponseImpl;
  const _AuthResponse._() : super._();

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  @DateTimeSerializer()
  DateTime get expirationDate;
  @override
  String get token;
  @override
  String get uuid;
  @override
  int get userId;
  @override
  int get idIndividu;
  @override
  int get etablissementId;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
