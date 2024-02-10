// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'periode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Periode _$PeriodeFromJson(Map<String, dynamic> json) {
  return _Periode.fromJson(json);
}

/// @nodoc
mixin _$Periode {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get libelleLongLt => throw _privateConstructorUsedError;
  String get libelleLongAr => throw _privateConstructorUsedError;
  String? get libelleCourtLt => throw _privateConstructorUsedError;
  String? get libelleCourtAr => throw _privateConstructorUsedError;
  int get rang => throw _privateConstructorUsedError;
  int get credit => throw _privateConstructorUsedError;
  String? get refCodePeriodicite => throw _privateConstructorUsedError;
  int get rangNiveau => throw _privateConstructorUsedError;
  String? get refCodePeriode => throw _privateConstructorUsedError;
  String get libelleLongFrNiveau => throw _privateConstructorUsedError;
  String get libelleLongFrCycle => throw _privateConstructorUsedError;
  String? get ncPeriodeId => throw _privateConstructorUsedError;
  String? get ncPeriodeCode => throw _privateConstructorUsedError;
  String? get ncPeriodeLibelle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodeCopyWith<Periode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodeCopyWith<$Res> {
  factory $PeriodeCopyWith(Periode value, $Res Function(Periode) then) =
      _$PeriodeCopyWithImpl<$Res, Periode>;
  @useResult
  $Res call(
      {int id,
      String code,
      String libelleLongLt,
      String libelleLongAr,
      String? libelleCourtLt,
      String? libelleCourtAr,
      int rang,
      int credit,
      String? refCodePeriodicite,
      int rangNiveau,
      String? refCodePeriode,
      String libelleLongFrNiveau,
      String libelleLongFrCycle,
      String? ncPeriodeId,
      String? ncPeriodeCode,
      String? ncPeriodeLibelle});
}

/// @nodoc
class _$PeriodeCopyWithImpl<$Res, $Val extends Periode>
    implements $PeriodeCopyWith<$Res> {
  _$PeriodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? libelleLongLt = null,
    Object? libelleLongAr = null,
    Object? libelleCourtLt = freezed,
    Object? libelleCourtAr = freezed,
    Object? rang = null,
    Object? credit = null,
    Object? refCodePeriodicite = freezed,
    Object? rangNiveau = null,
    Object? refCodePeriode = freezed,
    Object? libelleLongFrNiveau = null,
    Object? libelleLongFrCycle = null,
    Object? ncPeriodeId = freezed,
    Object? ncPeriodeCode = freezed,
    Object? ncPeriodeLibelle = freezed,
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
      libelleLongLt: null == libelleLongLt
          ? _value.libelleLongLt
          : libelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
      libelleLongAr: null == libelleLongAr
          ? _value.libelleLongAr
          : libelleLongAr // ignore: cast_nullable_to_non_nullable
              as String,
      libelleCourtLt: freezed == libelleCourtLt
          ? _value.libelleCourtLt
          : libelleCourtLt // ignore: cast_nullable_to_non_nullable
              as String?,
      libelleCourtAr: freezed == libelleCourtAr
          ? _value.libelleCourtAr
          : libelleCourtAr // ignore: cast_nullable_to_non_nullable
              as String?,
      rang: null == rang
          ? _value.rang
          : rang // ignore: cast_nullable_to_non_nullable
              as int,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int,
      refCodePeriodicite: freezed == refCodePeriodicite
          ? _value.refCodePeriodicite
          : refCodePeriodicite // ignore: cast_nullable_to_non_nullable
              as String?,
      rangNiveau: null == rangNiveau
          ? _value.rangNiveau
          : rangNiveau // ignore: cast_nullable_to_non_nullable
              as int,
      refCodePeriode: freezed == refCodePeriode
          ? _value.refCodePeriode
          : refCodePeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      libelleLongFrNiveau: null == libelleLongFrNiveau
          ? _value.libelleLongFrNiveau
          : libelleLongFrNiveau // ignore: cast_nullable_to_non_nullable
              as String,
      libelleLongFrCycle: null == libelleLongFrCycle
          ? _value.libelleLongFrCycle
          : libelleLongFrCycle // ignore: cast_nullable_to_non_nullable
              as String,
      ncPeriodeId: freezed == ncPeriodeId
          ? _value.ncPeriodeId
          : ncPeriodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      ncPeriodeCode: freezed == ncPeriodeCode
          ? _value.ncPeriodeCode
          : ncPeriodeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ncPeriodeLibelle: freezed == ncPeriodeLibelle
          ? _value.ncPeriodeLibelle
          : ncPeriodeLibelle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodeImplCopyWith<$Res> implements $PeriodeCopyWith<$Res> {
  factory _$$PeriodeImplCopyWith(
          _$PeriodeImpl value, $Res Function(_$PeriodeImpl) then) =
      __$$PeriodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      String libelleLongLt,
      String libelleLongAr,
      String? libelleCourtLt,
      String? libelleCourtAr,
      int rang,
      int credit,
      String? refCodePeriodicite,
      int rangNiveau,
      String? refCodePeriode,
      String libelleLongFrNiveau,
      String libelleLongFrCycle,
      String? ncPeriodeId,
      String? ncPeriodeCode,
      String? ncPeriodeLibelle});
}

/// @nodoc
class __$$PeriodeImplCopyWithImpl<$Res>
    extends _$PeriodeCopyWithImpl<$Res, _$PeriodeImpl>
    implements _$$PeriodeImplCopyWith<$Res> {
  __$$PeriodeImplCopyWithImpl(
      _$PeriodeImpl _value, $Res Function(_$PeriodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? libelleLongLt = null,
    Object? libelleLongAr = null,
    Object? libelleCourtLt = freezed,
    Object? libelleCourtAr = freezed,
    Object? rang = null,
    Object? credit = null,
    Object? refCodePeriodicite = freezed,
    Object? rangNiveau = null,
    Object? refCodePeriode = freezed,
    Object? libelleLongFrNiveau = null,
    Object? libelleLongFrCycle = null,
    Object? ncPeriodeId = freezed,
    Object? ncPeriodeCode = freezed,
    Object? ncPeriodeLibelle = freezed,
  }) {
    return _then(_$PeriodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      libelleLongLt: null == libelleLongLt
          ? _value.libelleLongLt
          : libelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
      libelleLongAr: null == libelleLongAr
          ? _value.libelleLongAr
          : libelleLongAr // ignore: cast_nullable_to_non_nullable
              as String,
      libelleCourtLt: freezed == libelleCourtLt
          ? _value.libelleCourtLt
          : libelleCourtLt // ignore: cast_nullable_to_non_nullable
              as String?,
      libelleCourtAr: freezed == libelleCourtAr
          ? _value.libelleCourtAr
          : libelleCourtAr // ignore: cast_nullable_to_non_nullable
              as String?,
      rang: null == rang
          ? _value.rang
          : rang // ignore: cast_nullable_to_non_nullable
              as int,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int,
      refCodePeriodicite: freezed == refCodePeriodicite
          ? _value.refCodePeriodicite
          : refCodePeriodicite // ignore: cast_nullable_to_non_nullable
              as String?,
      rangNiveau: null == rangNiveau
          ? _value.rangNiveau
          : rangNiveau // ignore: cast_nullable_to_non_nullable
              as int,
      refCodePeriode: freezed == refCodePeriode
          ? _value.refCodePeriode
          : refCodePeriode // ignore: cast_nullable_to_non_nullable
              as String?,
      libelleLongFrNiveau: null == libelleLongFrNiveau
          ? _value.libelleLongFrNiveau
          : libelleLongFrNiveau // ignore: cast_nullable_to_non_nullable
              as String,
      libelleLongFrCycle: null == libelleLongFrCycle
          ? _value.libelleLongFrCycle
          : libelleLongFrCycle // ignore: cast_nullable_to_non_nullable
              as String,
      ncPeriodeId: freezed == ncPeriodeId
          ? _value.ncPeriodeId
          : ncPeriodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      ncPeriodeCode: freezed == ncPeriodeCode
          ? _value.ncPeriodeCode
          : ncPeriodeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ncPeriodeLibelle: freezed == ncPeriodeLibelle
          ? _value.ncPeriodeLibelle
          : ncPeriodeLibelle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodeImpl extends _Periode {
  const _$PeriodeImpl(
      {required this.id,
      required this.code,
      required this.libelleLongLt,
      required this.libelleLongAr,
      this.libelleCourtLt,
      this.libelleCourtAr,
      required this.rang,
      required this.credit,
      this.refCodePeriodicite,
      required this.rangNiveau,
      this.refCodePeriode,
      required this.libelleLongFrNiveau,
      required this.libelleLongFrCycle,
      this.ncPeriodeId,
      this.ncPeriodeCode,
      this.ncPeriodeLibelle})
      : super._();

  factory _$PeriodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodeImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String libelleLongLt;
  @override
  final String libelleLongAr;
  @override
  final String? libelleCourtLt;
  @override
  final String? libelleCourtAr;
  @override
  final int rang;
  @override
  final int credit;
  @override
  final String? refCodePeriodicite;
  @override
  final int rangNiveau;
  @override
  final String? refCodePeriode;
  @override
  final String libelleLongFrNiveau;
  @override
  final String libelleLongFrCycle;
  @override
  final String? ncPeriodeId;
  @override
  final String? ncPeriodeCode;
  @override
  final String? ncPeriodeLibelle;

  @override
  String toString() {
    return 'Periode(id: $id, code: $code, libelleLongLt: $libelleLongLt, libelleLongAr: $libelleLongAr, libelleCourtLt: $libelleCourtLt, libelleCourtAr: $libelleCourtAr, rang: $rang, credit: $credit, refCodePeriodicite: $refCodePeriodicite, rangNiveau: $rangNiveau, refCodePeriode: $refCodePeriode, libelleLongFrNiveau: $libelleLongFrNiveau, libelleLongFrCycle: $libelleLongFrCycle, ncPeriodeId: $ncPeriodeId, ncPeriodeCode: $ncPeriodeCode, ncPeriodeLibelle: $ncPeriodeLibelle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.libelleLongLt, libelleLongLt) ||
                other.libelleLongLt == libelleLongLt) &&
            (identical(other.libelleLongAr, libelleLongAr) ||
                other.libelleLongAr == libelleLongAr) &&
            (identical(other.libelleCourtLt, libelleCourtLt) ||
                other.libelleCourtLt == libelleCourtLt) &&
            (identical(other.libelleCourtAr, libelleCourtAr) ||
                other.libelleCourtAr == libelleCourtAr) &&
            (identical(other.rang, rang) || other.rang == rang) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.refCodePeriodicite, refCodePeriodicite) ||
                other.refCodePeriodicite == refCodePeriodicite) &&
            (identical(other.rangNiveau, rangNiveau) ||
                other.rangNiveau == rangNiveau) &&
            (identical(other.refCodePeriode, refCodePeriode) ||
                other.refCodePeriode == refCodePeriode) &&
            (identical(other.libelleLongFrNiveau, libelleLongFrNiveau) ||
                other.libelleLongFrNiveau == libelleLongFrNiveau) &&
            (identical(other.libelleLongFrCycle, libelleLongFrCycle) ||
                other.libelleLongFrCycle == libelleLongFrCycle) &&
            (identical(other.ncPeriodeId, ncPeriodeId) ||
                other.ncPeriodeId == ncPeriodeId) &&
            (identical(other.ncPeriodeCode, ncPeriodeCode) ||
                other.ncPeriodeCode == ncPeriodeCode) &&
            (identical(other.ncPeriodeLibelle, ncPeriodeLibelle) ||
                other.ncPeriodeLibelle == ncPeriodeLibelle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      libelleLongLt,
      libelleLongAr,
      libelleCourtLt,
      libelleCourtAr,
      rang,
      credit,
      refCodePeriodicite,
      rangNiveau,
      refCodePeriode,
      libelleLongFrNiveau,
      libelleLongFrCycle,
      ncPeriodeId,
      ncPeriodeCode,
      ncPeriodeLibelle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodeImplCopyWith<_$PeriodeImpl> get copyWith =>
      __$$PeriodeImplCopyWithImpl<_$PeriodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodeImplToJson(
      this,
    );
  }
}

abstract class _Periode extends Periode {
  const factory _Periode(
      {required final int id,
      required final String code,
      required final String libelleLongLt,
      required final String libelleLongAr,
      final String? libelleCourtLt,
      final String? libelleCourtAr,
      required final int rang,
      required final int credit,
      final String? refCodePeriodicite,
      required final int rangNiveau,
      final String? refCodePeriode,
      required final String libelleLongFrNiveau,
      required final String libelleLongFrCycle,
      final String? ncPeriodeId,
      final String? ncPeriodeCode,
      final String? ncPeriodeLibelle}) = _$PeriodeImpl;
  const _Periode._() : super._();

  factory _Periode.fromJson(Map<String, dynamic> json) = _$PeriodeImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get libelleLongLt;
  @override
  String get libelleLongAr;
  @override
  String? get libelleCourtLt;
  @override
  String? get libelleCourtAr;
  @override
  int get rang;
  @override
  int get credit;
  @override
  String? get refCodePeriodicite;
  @override
  int get rangNiveau;
  @override
  String? get refCodePeriode;
  @override
  String get libelleLongFrNiveau;
  @override
  String get libelleLongFrCycle;
  @override
  String? get ncPeriodeId;
  @override
  String? get ncPeriodeCode;
  @override
  String? get ncPeriodeLibelle;
  @override
  @JsonKey(ignore: true)
  _$$PeriodeImplCopyWith<_$PeriodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
