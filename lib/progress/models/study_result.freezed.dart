// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyResult _$StudyResultFromJson(Map<String, dynamic> json) {
  return _StudyResult.fromJson(json);
}

/// @nodoc
mixin _$StudyResult {
  int get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get periodeId => throw _privateConstructorUsedError;
  String get periodeLibelleFr => throw _privateConstructorUsedError;
  String get periodeLibelleAr => throw _privateConstructorUsedError;
  List<StudyResultGroup> get bilanUes => throw _privateConstructorUsedError;
  double get moyenne => throw _privateConstructorUsedError;
  double get moyenneSn => throw _privateConstructorUsedError;
  double get credit => throw _privateConstructorUsedError;
  double get creditObtenu => throw _privateConstructorUsedError;
  double get creditAcquis => throw _privateConstructorUsedError;
  bool get annuel => throw _privateConstructorUsedError;
  String get cycleLibelleLongLt => throw _privateConstructorUsedError;
  String get niveauCode => throw _privateConstructorUsedError;
  int get niveauRang => throw _privateConstructorUsedError;
  String get niveauLibelleLongLt => throw _privateConstructorUsedError;
  String get niveauLibelleLongAr => throw _privateConstructorUsedError;
  int get totalAquis => throw _privateConstructorUsedError;
  int get effectif => throw _privateConstructorUsedError;
  double get coefficient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyResultCopyWith<StudyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyResultCopyWith<$Res> {
  factory $StudyResultCopyWith(
          StudyResult value, $Res Function(StudyResult) then) =
      _$StudyResultCopyWithImpl<$Res, StudyResult>;
  @useResult
  $Res call(
      {int id,
      int type,
      int periodeId,
      String periodeLibelleFr,
      String periodeLibelleAr,
      List<StudyResultGroup> bilanUes,
      double moyenne,
      double moyenneSn,
      double credit,
      double creditObtenu,
      double creditAcquis,
      bool annuel,
      String cycleLibelleLongLt,
      String niveauCode,
      int niveauRang,
      String niveauLibelleLongLt,
      String niveauLibelleLongAr,
      int totalAquis,
      int effectif,
      double coefficient});
}

/// @nodoc
class _$StudyResultCopyWithImpl<$Res, $Val extends StudyResult>
    implements $StudyResultCopyWith<$Res> {
  _$StudyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? periodeId = null,
    Object? periodeLibelleFr = null,
    Object? periodeLibelleAr = null,
    Object? bilanUes = null,
    Object? moyenne = null,
    Object? moyenneSn = null,
    Object? credit = null,
    Object? creditObtenu = null,
    Object? creditAcquis = null,
    Object? annuel = null,
    Object? cycleLibelleLongLt = null,
    Object? niveauCode = null,
    Object? niveauRang = null,
    Object? niveauLibelleLongLt = null,
    Object? niveauLibelleLongAr = null,
    Object? totalAquis = null,
    Object? effectif = null,
    Object? coefficient = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      periodeId: null == periodeId
          ? _value.periodeId
          : periodeId // ignore: cast_nullable_to_non_nullable
              as int,
      periodeLibelleFr: null == periodeLibelleFr
          ? _value.periodeLibelleFr
          : periodeLibelleFr // ignore: cast_nullable_to_non_nullable
              as String,
      periodeLibelleAr: null == periodeLibelleAr
          ? _value.periodeLibelleAr
          : periodeLibelleAr // ignore: cast_nullable_to_non_nullable
              as String,
      bilanUes: null == bilanUes
          ? _value.bilanUes
          : bilanUes // ignore: cast_nullable_to_non_nullable
              as List<StudyResultGroup>,
      moyenne: null == moyenne
          ? _value.moyenne
          : moyenne // ignore: cast_nullable_to_non_nullable
              as double,
      moyenneSn: null == moyenneSn
          ? _value.moyenneSn
          : moyenneSn // ignore: cast_nullable_to_non_nullable
              as double,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as double,
      creditObtenu: null == creditObtenu
          ? _value.creditObtenu
          : creditObtenu // ignore: cast_nullable_to_non_nullable
              as double,
      creditAcquis: null == creditAcquis
          ? _value.creditAcquis
          : creditAcquis // ignore: cast_nullable_to_non_nullable
              as double,
      annuel: null == annuel
          ? _value.annuel
          : annuel // ignore: cast_nullable_to_non_nullable
              as bool,
      cycleLibelleLongLt: null == cycleLibelleLongLt
          ? _value.cycleLibelleLongLt
          : cycleLibelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
      niveauCode: null == niveauCode
          ? _value.niveauCode
          : niveauCode // ignore: cast_nullable_to_non_nullable
              as String,
      niveauRang: null == niveauRang
          ? _value.niveauRang
          : niveauRang // ignore: cast_nullable_to_non_nullable
              as int,
      niveauLibelleLongLt: null == niveauLibelleLongLt
          ? _value.niveauLibelleLongLt
          : niveauLibelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
      niveauLibelleLongAr: null == niveauLibelleLongAr
          ? _value.niveauLibelleLongAr
          : niveauLibelleLongAr // ignore: cast_nullable_to_non_nullable
              as String,
      totalAquis: null == totalAquis
          ? _value.totalAquis
          : totalAquis // ignore: cast_nullable_to_non_nullable
              as int,
      effectif: null == effectif
          ? _value.effectif
          : effectif // ignore: cast_nullable_to_non_nullable
              as int,
      coefficient: null == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyResultImplCopyWith<$Res>
    implements $StudyResultCopyWith<$Res> {
  factory _$$StudyResultImplCopyWith(
          _$StudyResultImpl value, $Res Function(_$StudyResultImpl) then) =
      __$$StudyResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int type,
      int periodeId,
      String periodeLibelleFr,
      String periodeLibelleAr,
      List<StudyResultGroup> bilanUes,
      double moyenne,
      double moyenneSn,
      double credit,
      double creditObtenu,
      double creditAcquis,
      bool annuel,
      String cycleLibelleLongLt,
      String niveauCode,
      int niveauRang,
      String niveauLibelleLongLt,
      String niveauLibelleLongAr,
      int totalAquis,
      int effectif,
      double coefficient});
}

/// @nodoc
class __$$StudyResultImplCopyWithImpl<$Res>
    extends _$StudyResultCopyWithImpl<$Res, _$StudyResultImpl>
    implements _$$StudyResultImplCopyWith<$Res> {
  __$$StudyResultImplCopyWithImpl(
      _$StudyResultImpl _value, $Res Function(_$StudyResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? periodeId = null,
    Object? periodeLibelleFr = null,
    Object? periodeLibelleAr = null,
    Object? bilanUes = null,
    Object? moyenne = null,
    Object? moyenneSn = null,
    Object? credit = null,
    Object? creditObtenu = null,
    Object? creditAcquis = null,
    Object? annuel = null,
    Object? cycleLibelleLongLt = null,
    Object? niveauCode = null,
    Object? niveauRang = null,
    Object? niveauLibelleLongLt = null,
    Object? niveauLibelleLongAr = null,
    Object? totalAquis = null,
    Object? effectif = null,
    Object? coefficient = null,
  }) {
    return _then(_$StudyResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      periodeId: null == periodeId
          ? _value.periodeId
          : periodeId // ignore: cast_nullable_to_non_nullable
              as int,
      periodeLibelleFr: null == periodeLibelleFr
          ? _value.periodeLibelleFr
          : periodeLibelleFr // ignore: cast_nullable_to_non_nullable
              as String,
      periodeLibelleAr: null == periodeLibelleAr
          ? _value.periodeLibelleAr
          : periodeLibelleAr // ignore: cast_nullable_to_non_nullable
              as String,
      bilanUes: null == bilanUes
          ? _value._bilanUes
          : bilanUes // ignore: cast_nullable_to_non_nullable
              as List<StudyResultGroup>,
      moyenne: null == moyenne
          ? _value.moyenne
          : moyenne // ignore: cast_nullable_to_non_nullable
              as double,
      moyenneSn: null == moyenneSn
          ? _value.moyenneSn
          : moyenneSn // ignore: cast_nullable_to_non_nullable
              as double,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as double,
      creditObtenu: null == creditObtenu
          ? _value.creditObtenu
          : creditObtenu // ignore: cast_nullable_to_non_nullable
              as double,
      creditAcquis: null == creditAcquis
          ? _value.creditAcquis
          : creditAcquis // ignore: cast_nullable_to_non_nullable
              as double,
      annuel: null == annuel
          ? _value.annuel
          : annuel // ignore: cast_nullable_to_non_nullable
              as bool,
      cycleLibelleLongLt: null == cycleLibelleLongLt
          ? _value.cycleLibelleLongLt
          : cycleLibelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
      niveauCode: null == niveauCode
          ? _value.niveauCode
          : niveauCode // ignore: cast_nullable_to_non_nullable
              as String,
      niveauRang: null == niveauRang
          ? _value.niveauRang
          : niveauRang // ignore: cast_nullable_to_non_nullable
              as int,
      niveauLibelleLongLt: null == niveauLibelleLongLt
          ? _value.niveauLibelleLongLt
          : niveauLibelleLongLt // ignore: cast_nullable_to_non_nullable
              as String,
      niveauLibelleLongAr: null == niveauLibelleLongAr
          ? _value.niveauLibelleLongAr
          : niveauLibelleLongAr // ignore: cast_nullable_to_non_nullable
              as String,
      totalAquis: null == totalAquis
          ? _value.totalAquis
          : totalAquis // ignore: cast_nullable_to_non_nullable
              as int,
      effectif: null == effectif
          ? _value.effectif
          : effectif // ignore: cast_nullable_to_non_nullable
              as int,
      coefficient: null == coefficient
          ? _value.coefficient
          : coefficient // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyResultImpl implements _StudyResult {
  _$StudyResultImpl(
      {required this.id,
      required this.type,
      required this.periodeId,
      required this.periodeLibelleFr,
      required this.periodeLibelleAr,
      required final List<StudyResultGroup> bilanUes,
      required this.moyenne,
      required this.moyenneSn,
      required this.credit,
      required this.creditObtenu,
      required this.creditAcquis,
      required this.annuel,
      required this.cycleLibelleLongLt,
      required this.niveauCode,
      required this.niveauRang,
      required this.niveauLibelleLongLt,
      required this.niveauLibelleLongAr,
      required this.totalAquis,
      required this.effectif,
      required this.coefficient})
      : _bilanUes = bilanUes;

  factory _$StudyResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyResultImplFromJson(json);

  @override
  final int id;
  @override
  final int type;
  @override
  final int periodeId;
  @override
  final String periodeLibelleFr;
  @override
  final String periodeLibelleAr;
  final List<StudyResultGroup> _bilanUes;
  @override
  List<StudyResultGroup> get bilanUes {
    if (_bilanUes is EqualUnmodifiableListView) return _bilanUes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bilanUes);
  }

  @override
  final double moyenne;
  @override
  final double moyenneSn;
  @override
  final double credit;
  @override
  final double creditObtenu;
  @override
  final double creditAcquis;
  @override
  final bool annuel;
  @override
  final String cycleLibelleLongLt;
  @override
  final String niveauCode;
  @override
  final int niveauRang;
  @override
  final String niveauLibelleLongLt;
  @override
  final String niveauLibelleLongAr;
  @override
  final int totalAquis;
  @override
  final int effectif;
  @override
  final double coefficient;

  @override
  String toString() {
    return 'StudyResult(id: $id, type: $type, periodeId: $periodeId, periodeLibelleFr: $periodeLibelleFr, periodeLibelleAr: $periodeLibelleAr, bilanUes: $bilanUes, moyenne: $moyenne, moyenneSn: $moyenneSn, credit: $credit, creditObtenu: $creditObtenu, creditAcquis: $creditAcquis, annuel: $annuel, cycleLibelleLongLt: $cycleLibelleLongLt, niveauCode: $niveauCode, niveauRang: $niveauRang, niveauLibelleLongLt: $niveauLibelleLongLt, niveauLibelleLongAr: $niveauLibelleLongAr, totalAquis: $totalAquis, effectif: $effectif, coefficient: $coefficient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.periodeId, periodeId) ||
                other.periodeId == periodeId) &&
            (identical(other.periodeLibelleFr, periodeLibelleFr) ||
                other.periodeLibelleFr == periodeLibelleFr) &&
            (identical(other.periodeLibelleAr, periodeLibelleAr) ||
                other.periodeLibelleAr == periodeLibelleAr) &&
            const DeepCollectionEquality().equals(other._bilanUes, _bilanUes) &&
            (identical(other.moyenne, moyenne) || other.moyenne == moyenne) &&
            (identical(other.moyenneSn, moyenneSn) ||
                other.moyenneSn == moyenneSn) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.creditObtenu, creditObtenu) ||
                other.creditObtenu == creditObtenu) &&
            (identical(other.creditAcquis, creditAcquis) ||
                other.creditAcquis == creditAcquis) &&
            (identical(other.annuel, annuel) || other.annuel == annuel) &&
            (identical(other.cycleLibelleLongLt, cycleLibelleLongLt) ||
                other.cycleLibelleLongLt == cycleLibelleLongLt) &&
            (identical(other.niveauCode, niveauCode) ||
                other.niveauCode == niveauCode) &&
            (identical(other.niveauRang, niveauRang) ||
                other.niveauRang == niveauRang) &&
            (identical(other.niveauLibelleLongLt, niveauLibelleLongLt) ||
                other.niveauLibelleLongLt == niveauLibelleLongLt) &&
            (identical(other.niveauLibelleLongAr, niveauLibelleLongAr) ||
                other.niveauLibelleLongAr == niveauLibelleLongAr) &&
            (identical(other.totalAquis, totalAquis) ||
                other.totalAquis == totalAquis) &&
            (identical(other.effectif, effectif) ||
                other.effectif == effectif) &&
            (identical(other.coefficient, coefficient) ||
                other.coefficient == coefficient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        periodeId,
        periodeLibelleFr,
        periodeLibelleAr,
        const DeepCollectionEquality().hash(_bilanUes),
        moyenne,
        moyenneSn,
        credit,
        creditObtenu,
        creditAcquis,
        annuel,
        cycleLibelleLongLt,
        niveauCode,
        niveauRang,
        niveauLibelleLongLt,
        niveauLibelleLongAr,
        totalAquis,
        effectif,
        coefficient
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyResultImplCopyWith<_$StudyResultImpl> get copyWith =>
      __$$StudyResultImplCopyWithImpl<_$StudyResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyResultImplToJson(
      this,
    );
  }
}

abstract class _StudyResult implements StudyResult {
  factory _StudyResult(
      {required final int id,
      required final int type,
      required final int periodeId,
      required final String periodeLibelleFr,
      required final String periodeLibelleAr,
      required final List<StudyResultGroup> bilanUes,
      required final double moyenne,
      required final double moyenneSn,
      required final double credit,
      required final double creditObtenu,
      required final double creditAcquis,
      required final bool annuel,
      required final String cycleLibelleLongLt,
      required final String niveauCode,
      required final int niveauRang,
      required final String niveauLibelleLongLt,
      required final String niveauLibelleLongAr,
      required final int totalAquis,
      required final int effectif,
      required final double coefficient}) = _$StudyResultImpl;

  factory _StudyResult.fromJson(Map<String, dynamic> json) =
      _$StudyResultImpl.fromJson;

  @override
  int get id;
  @override
  int get type;
  @override
  int get periodeId;
  @override
  String get periodeLibelleFr;
  @override
  String get periodeLibelleAr;
  @override
  List<StudyResultGroup> get bilanUes;
  @override
  double get moyenne;
  @override
  double get moyenneSn;
  @override
  double get credit;
  @override
  double get creditObtenu;
  @override
  double get creditAcquis;
  @override
  bool get annuel;
  @override
  String get cycleLibelleLongLt;
  @override
  String get niveauCode;
  @override
  int get niveauRang;
  @override
  String get niveauLibelleLongLt;
  @override
  String get niveauLibelleLongAr;
  @override
  int get totalAquis;
  @override
  int get effectif;
  @override
  double get coefficient;
  @override
  @JsonKey(ignore: true)
  _$$StudyResultImplCopyWith<_$StudyResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
