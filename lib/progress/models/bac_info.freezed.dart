// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bac_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BacInfo _$BacInfoFromJson(Map<String, dynamic> json) {
  return _BacInfo.fromJson(json);
}

/// @nodoc
mixin _$BacInfo {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get nin => throw _privateConstructorUsedError;
  String get matricule => throw _privateConstructorUsedError;
  String get nomAr => throw _privateConstructorUsedError;
  String get prenomAr => throw _privateConstructorUsedError;
  String get nomFr => throw _privateConstructorUsedError;
  String get prenomFr => throw _privateConstructorUsedError;
  @DateTimeSerializer()
  DateTime get dateNaissance => throw _privateConstructorUsedError;
  @StringToDoubleSerializer()
  double get moyenneBac => throw _privateConstructorUsedError;
  String get refCodeWilayaBac => throw _privateConstructorUsedError;
  String get refCodeSerieBac => throw _privateConstructorUsedError;
  String get libelleSerieBac => throw _privateConstructorUsedError;
  String get anneeBac => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BacInfoCopyWith<BacInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BacInfoCopyWith<$Res> {
  factory $BacInfoCopyWith(BacInfo value, $Res Function(BacInfo) then) =
      _$BacInfoCopyWithImpl<$Res, BacInfo>;
  @useResult
  $Res call(
      {int id,
      String uuid,
      String nin,
      String matricule,
      String nomAr,
      String prenomAr,
      String nomFr,
      String prenomFr,
      @DateTimeSerializer() DateTime dateNaissance,
      @StringToDoubleSerializer() double moyenneBac,
      String refCodeWilayaBac,
      String refCodeSerieBac,
      String libelleSerieBac,
      String anneeBac});
}

/// @nodoc
class _$BacInfoCopyWithImpl<$Res, $Val extends BacInfo>
    implements $BacInfoCopyWith<$Res> {
  _$BacInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? nin = null,
    Object? matricule = null,
    Object? nomAr = null,
    Object? prenomAr = null,
    Object? nomFr = null,
    Object? prenomFr = null,
    Object? dateNaissance = null,
    Object? moyenneBac = null,
    Object? refCodeWilayaBac = null,
    Object? refCodeSerieBac = null,
    Object? libelleSerieBac = null,
    Object? anneeBac = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      nin: null == nin
          ? _value.nin
          : nin // ignore: cast_nullable_to_non_nullable
              as String,
      matricule: null == matricule
          ? _value.matricule
          : matricule // ignore: cast_nullable_to_non_nullable
              as String,
      nomAr: null == nomAr
          ? _value.nomAr
          : nomAr // ignore: cast_nullable_to_non_nullable
              as String,
      prenomAr: null == prenomAr
          ? _value.prenomAr
          : prenomAr // ignore: cast_nullable_to_non_nullable
              as String,
      nomFr: null == nomFr
          ? _value.nomFr
          : nomFr // ignore: cast_nullable_to_non_nullable
              as String,
      prenomFr: null == prenomFr
          ? _value.prenomFr
          : prenomFr // ignore: cast_nullable_to_non_nullable
              as String,
      dateNaissance: null == dateNaissance
          ? _value.dateNaissance
          : dateNaissance // ignore: cast_nullable_to_non_nullable
              as DateTime,
      moyenneBac: null == moyenneBac
          ? _value.moyenneBac
          : moyenneBac // ignore: cast_nullable_to_non_nullable
              as double,
      refCodeWilayaBac: null == refCodeWilayaBac
          ? _value.refCodeWilayaBac
          : refCodeWilayaBac // ignore: cast_nullable_to_non_nullable
              as String,
      refCodeSerieBac: null == refCodeSerieBac
          ? _value.refCodeSerieBac
          : refCodeSerieBac // ignore: cast_nullable_to_non_nullable
              as String,
      libelleSerieBac: null == libelleSerieBac
          ? _value.libelleSerieBac
          : libelleSerieBac // ignore: cast_nullable_to_non_nullable
              as String,
      anneeBac: null == anneeBac
          ? _value.anneeBac
          : anneeBac // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BacInfoImplCopyWith<$Res> implements $BacInfoCopyWith<$Res> {
  factory _$$BacInfoImplCopyWith(
          _$BacInfoImpl value, $Res Function(_$BacInfoImpl) then) =
      __$$BacInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String uuid,
      String nin,
      String matricule,
      String nomAr,
      String prenomAr,
      String nomFr,
      String prenomFr,
      @DateTimeSerializer() DateTime dateNaissance,
      @StringToDoubleSerializer() double moyenneBac,
      String refCodeWilayaBac,
      String refCodeSerieBac,
      String libelleSerieBac,
      String anneeBac});
}

/// @nodoc
class __$$BacInfoImplCopyWithImpl<$Res>
    extends _$BacInfoCopyWithImpl<$Res, _$BacInfoImpl>
    implements _$$BacInfoImplCopyWith<$Res> {
  __$$BacInfoImplCopyWithImpl(
      _$BacInfoImpl _value, $Res Function(_$BacInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? nin = null,
    Object? matricule = null,
    Object? nomAr = null,
    Object? prenomAr = null,
    Object? nomFr = null,
    Object? prenomFr = null,
    Object? dateNaissance = null,
    Object? moyenneBac = null,
    Object? refCodeWilayaBac = null,
    Object? refCodeSerieBac = null,
    Object? libelleSerieBac = null,
    Object? anneeBac = null,
  }) {
    return _then(_$BacInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      nin: null == nin
          ? _value.nin
          : nin // ignore: cast_nullable_to_non_nullable
              as String,
      matricule: null == matricule
          ? _value.matricule
          : matricule // ignore: cast_nullable_to_non_nullable
              as String,
      nomAr: null == nomAr
          ? _value.nomAr
          : nomAr // ignore: cast_nullable_to_non_nullable
              as String,
      prenomAr: null == prenomAr
          ? _value.prenomAr
          : prenomAr // ignore: cast_nullable_to_non_nullable
              as String,
      nomFr: null == nomFr
          ? _value.nomFr
          : nomFr // ignore: cast_nullable_to_non_nullable
              as String,
      prenomFr: null == prenomFr
          ? _value.prenomFr
          : prenomFr // ignore: cast_nullable_to_non_nullable
              as String,
      dateNaissance: null == dateNaissance
          ? _value.dateNaissance
          : dateNaissance // ignore: cast_nullable_to_non_nullable
              as DateTime,
      moyenneBac: null == moyenneBac
          ? _value.moyenneBac
          : moyenneBac // ignore: cast_nullable_to_non_nullable
              as double,
      refCodeWilayaBac: null == refCodeWilayaBac
          ? _value.refCodeWilayaBac
          : refCodeWilayaBac // ignore: cast_nullable_to_non_nullable
              as String,
      refCodeSerieBac: null == refCodeSerieBac
          ? _value.refCodeSerieBac
          : refCodeSerieBac // ignore: cast_nullable_to_non_nullable
              as String,
      libelleSerieBac: null == libelleSerieBac
          ? _value.libelleSerieBac
          : libelleSerieBac // ignore: cast_nullable_to_non_nullable
              as String,
      anneeBac: null == anneeBac
          ? _value.anneeBac
          : anneeBac // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BacInfoImpl implements _BacInfo {
  _$BacInfoImpl(
      {required this.id,
      required this.uuid,
      required this.nin,
      required this.matricule,
      required this.nomAr,
      required this.prenomAr,
      required this.nomFr,
      required this.prenomFr,
      @DateTimeSerializer() required this.dateNaissance,
      @StringToDoubleSerializer() required this.moyenneBac,
      required this.refCodeWilayaBac,
      required this.refCodeSerieBac,
      required this.libelleSerieBac,
      required this.anneeBac});

  factory _$BacInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BacInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String nin;
  @override
  final String matricule;
  @override
  final String nomAr;
  @override
  final String prenomAr;
  @override
  final String nomFr;
  @override
  final String prenomFr;
  @override
  @DateTimeSerializer()
  final DateTime dateNaissance;
  @override
  @StringToDoubleSerializer()
  final double moyenneBac;
  @override
  final String refCodeWilayaBac;
  @override
  final String refCodeSerieBac;
  @override
  final String libelleSerieBac;
  @override
  final String anneeBac;

  @override
  String toString() {
    return 'BacInfo(id: $id, uuid: $uuid, nin: $nin, matricule: $matricule, nomAr: $nomAr, prenomAr: $prenomAr, nomFr: $nomFr, prenomFr: $prenomFr, dateNaissance: $dateNaissance, moyenneBac: $moyenneBac, refCodeWilayaBac: $refCodeWilayaBac, refCodeSerieBac: $refCodeSerieBac, libelleSerieBac: $libelleSerieBac, anneeBac: $anneeBac)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BacInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.matricule, matricule) ||
                other.matricule == matricule) &&
            (identical(other.nomAr, nomAr) || other.nomAr == nomAr) &&
            (identical(other.prenomAr, prenomAr) ||
                other.prenomAr == prenomAr) &&
            (identical(other.nomFr, nomFr) || other.nomFr == nomFr) &&
            (identical(other.prenomFr, prenomFr) ||
                other.prenomFr == prenomFr) &&
            (identical(other.dateNaissance, dateNaissance) ||
                other.dateNaissance == dateNaissance) &&
            (identical(other.moyenneBac, moyenneBac) ||
                other.moyenneBac == moyenneBac) &&
            (identical(other.refCodeWilayaBac, refCodeWilayaBac) ||
                other.refCodeWilayaBac == refCodeWilayaBac) &&
            (identical(other.refCodeSerieBac, refCodeSerieBac) ||
                other.refCodeSerieBac == refCodeSerieBac) &&
            (identical(other.libelleSerieBac, libelleSerieBac) ||
                other.libelleSerieBac == libelleSerieBac) &&
            (identical(other.anneeBac, anneeBac) ||
                other.anneeBac == anneeBac));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uuid,
      nin,
      matricule,
      nomAr,
      prenomAr,
      nomFr,
      prenomFr,
      dateNaissance,
      moyenneBac,
      refCodeWilayaBac,
      refCodeSerieBac,
      libelleSerieBac,
      anneeBac);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BacInfoImplCopyWith<_$BacInfoImpl> get copyWith =>
      __$$BacInfoImplCopyWithImpl<_$BacInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BacInfoImplToJson(
      this,
    );
  }
}

abstract class _BacInfo implements BacInfo {
  factory _BacInfo(
      {required final int id,
      required final String uuid,
      required final String nin,
      required final String matricule,
      required final String nomAr,
      required final String prenomAr,
      required final String nomFr,
      required final String prenomFr,
      @DateTimeSerializer() required final DateTime dateNaissance,
      @StringToDoubleSerializer() required final double moyenneBac,
      required final String refCodeWilayaBac,
      required final String refCodeSerieBac,
      required final String libelleSerieBac,
      required final String anneeBac}) = _$BacInfoImpl;

  factory _BacInfo.fromJson(Map<String, dynamic> json) = _$BacInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get uuid;
  @override
  String get nin;
  @override
  String get matricule;
  @override
  String get nomAr;
  @override
  String get prenomAr;
  @override
  String get nomFr;
  @override
  String get prenomFr;
  @override
  @DateTimeSerializer()
  DateTime get dateNaissance;
  @override
  @StringToDoubleSerializer()
  double get moyenneBac;
  @override
  String get refCodeWilayaBac;
  @override
  String get refCodeSerieBac;
  @override
  String get libelleSerieBac;
  @override
  String get anneeBac;
  @override
  @JsonKey(ignore: true)
  _$$BacInfoImplCopyWith<_$BacInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
