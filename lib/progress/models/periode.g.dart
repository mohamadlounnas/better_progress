// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periode.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPeriodeCollection on Isar {
  IsarCollection<Periode> get periodes => this.collection();
}

const PeriodeSchema = CollectionSchema(
  name: r'Periode',
  id: -3811814415796635186,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.string,
    ),
    r'credit': PropertySchema(
      id: 1,
      name: r'credit',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'libelleCourtAr': PropertySchema(
      id: 3,
      name: r'libelleCourtAr',
      type: IsarType.string,
    ),
    r'libelleCourtLt': PropertySchema(
      id: 4,
      name: r'libelleCourtLt',
      type: IsarType.string,
    ),
    r'libelleLongAr': PropertySchema(
      id: 5,
      name: r'libelleLongAr',
      type: IsarType.string,
    ),
    r'libelleLongFrCycle': PropertySchema(
      id: 6,
      name: r'libelleLongFrCycle',
      type: IsarType.string,
    ),
    r'libelleLongFrNiveau': PropertySchema(
      id: 7,
      name: r'libelleLongFrNiveau',
      type: IsarType.string,
    ),
    r'libelleLongLt': PropertySchema(
      id: 8,
      name: r'libelleLongLt',
      type: IsarType.string,
    ),
    r'ncPeriodeCode': PropertySchema(
      id: 9,
      name: r'ncPeriodeCode',
      type: IsarType.string,
    ),
    r'ncPeriodeId': PropertySchema(
      id: 10,
      name: r'ncPeriodeId',
      type: IsarType.string,
    ),
    r'ncPeriodeLibelle': PropertySchema(
      id: 11,
      name: r'ncPeriodeLibelle',
      type: IsarType.string,
    ),
    r'rang': PropertySchema(
      id: 12,
      name: r'rang',
      type: IsarType.long,
    ),
    r'rangNiveau': PropertySchema(
      id: 13,
      name: r'rangNiveau',
      type: IsarType.long,
    ),
    r'refCodePeriode': PropertySchema(
      id: 14,
      name: r'refCodePeriode',
      type: IsarType.string,
    ),
    r'refCodePeriodicite': PropertySchema(
      id: 15,
      name: r'refCodePeriodicite',
      type: IsarType.string,
    )
  },
  estimateSize: _periodeEstimateSize,
  serialize: _periodeSerialize,
  deserialize: _periodeDeserialize,
  deserializeProp: _periodeDeserializeProp,
  idName: r'id_',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _periodeGetId,
  getLinks: _periodeGetLinks,
  attach: _periodeAttach,
  version: '3.1.0+1',
);

int _periodeEstimateSize(
  Periode object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.code.length * 3;
  {
    final value = object.libelleCourtAr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.libelleCourtLt;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.libelleLongAr.length * 3;
  bytesCount += 3 + object.libelleLongFrCycle.length * 3;
  bytesCount += 3 + object.libelleLongFrNiveau.length * 3;
  bytesCount += 3 + object.libelleLongLt.length * 3;
  {
    final value = object.ncPeriodeCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ncPeriodeId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ncPeriodeLibelle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.refCodePeriode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.refCodePeriodicite;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _periodeSerialize(
  Periode object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeLong(offsets[1], object.credit);
  writer.writeLong(offsets[2], object.id);
  writer.writeString(offsets[3], object.libelleCourtAr);
  writer.writeString(offsets[4], object.libelleCourtLt);
  writer.writeString(offsets[5], object.libelleLongAr);
  writer.writeString(offsets[6], object.libelleLongFrCycle);
  writer.writeString(offsets[7], object.libelleLongFrNiveau);
  writer.writeString(offsets[8], object.libelleLongLt);
  writer.writeString(offsets[9], object.ncPeriodeCode);
  writer.writeString(offsets[10], object.ncPeriodeId);
  writer.writeString(offsets[11], object.ncPeriodeLibelle);
  writer.writeLong(offsets[12], object.rang);
  writer.writeLong(offsets[13], object.rangNiveau);
  writer.writeString(offsets[14], object.refCodePeriode);
  writer.writeString(offsets[15], object.refCodePeriodicite);
}

Periode _periodeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Periode(
    code: reader.readString(offsets[0]),
    credit: reader.readLong(offsets[1]),
    id: reader.readLong(offsets[2]),
    libelleCourtAr: reader.readStringOrNull(offsets[3]),
    libelleCourtLt: reader.readStringOrNull(offsets[4]),
    libelleLongAr: reader.readString(offsets[5]),
    libelleLongFrCycle: reader.readString(offsets[6]),
    libelleLongFrNiveau: reader.readString(offsets[7]),
    libelleLongLt: reader.readString(offsets[8]),
    ncPeriodeCode: reader.readStringOrNull(offsets[9]),
    ncPeriodeId: reader.readStringOrNull(offsets[10]),
    ncPeriodeLibelle: reader.readStringOrNull(offsets[11]),
    rang: reader.readLong(offsets[12]),
    rangNiveau: reader.readLong(offsets[13]),
    refCodePeriode: reader.readStringOrNull(offsets[14]),
    refCodePeriodicite: reader.readStringOrNull(offsets[15]),
  );
  return object;
}

P _periodeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _periodeGetId(Periode object) {
  return object.id_;
}

List<IsarLinkBase<dynamic>> _periodeGetLinks(Periode object) {
  return [];
}

void _periodeAttach(IsarCollection<dynamic> col, Id id, Periode object) {}

extension PeriodeQueryWhereSort on QueryBuilder<Periode, Periode, QWhere> {
  QueryBuilder<Periode, Periode, QAfterWhere> anyId_() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PeriodeQueryWhere on QueryBuilder<Periode, Periode, QWhereClause> {
  QueryBuilder<Periode, Periode, QAfterWhereClause> id_EqualTo(Id id_) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id_,
        upper: id_,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterWhereClause> id_NotEqualTo(Id id_) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id_, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id_, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id_, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id_, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Periode, Periode, QAfterWhereClause> id_GreaterThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id_, includeLower: include),
      );
    });
  }

  QueryBuilder<Periode, Periode, QAfterWhereClause> id_LessThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id_, includeUpper: include),
      );
    });
  }

  QueryBuilder<Periode, Periode, QAfterWhereClause> id_Between(
    Id lowerId_,
    Id upperId_, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId_,
        includeLower: includeLower,
        upper: upperId_,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PeriodeQueryFilter
    on QueryBuilder<Periode, Periode, QFilterCondition> {
  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> creditEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'credit',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> creditGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'credit',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> creditLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'credit',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> creditBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'credit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> id_EqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> id_GreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> id_LessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> id_Between(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id_',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtArIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'libelleCourtAr',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtArIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'libelleCourtAr',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtArEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleCourtAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtArGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libelleCourtAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtArLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libelleCourtAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtArBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libelleCourtAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libelleCourtAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libelleCourtAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtArContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libelleCourtAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtArMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libelleCourtAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleCourtAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libelleCourtAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtLtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'libelleCourtLt',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtLtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'libelleCourtLt',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtLtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleCourtLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtLtGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libelleCourtLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtLtLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libelleCourtLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtLtBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libelleCourtLt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtLtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libelleCourtLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtLtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libelleCourtLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtLtContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libelleCourtLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleCourtLtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libelleCourtLt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtLtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleCourtLt',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleCourtLtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libelleCourtLt',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongArGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libelleLongAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libelleLongAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libelleLongAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libelleLongAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libelleLongAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libelleLongAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libelleLongAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libelleLongAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongFrCycle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libelleLongFrCycle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libelleLongFrCycle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libelleLongFrCycle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libelleLongFrCycle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libelleLongFrCycle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libelleLongFrCycle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libelleLongFrCycle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongFrCycle',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrCycleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libelleLongFrCycle',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongFrNiveau',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libelleLongFrNiveau',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libelleLongFrNiveau',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libelleLongFrNiveau',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libelleLongFrNiveau',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libelleLongFrNiveau',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libelleLongFrNiveau',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libelleLongFrNiveau',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongFrNiveau',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongFrNiveauIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libelleLongFrNiveau',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongLtGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libelleLongLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libelleLongLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libelleLongLt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libelleLongLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libelleLongLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libelleLongLt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libelleLongLt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> libelleLongLtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelleLongLt',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      libelleLongLtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libelleLongLt',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ncPeriodeCode',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ncPeriodeCode',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ncPeriodeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ncPeriodeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ncPeriodeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ncPeriodeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ncPeriodeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ncPeriodeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ncPeriodeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ncPeriodeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ncPeriodeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ncPeriodeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ncPeriodeId',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ncPeriodeId',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ncPeriodeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ncPeriodeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ncPeriodeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ncPeriodeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ncPeriodeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ncPeriodeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ncPeriodeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ncPeriodeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ncPeriodeId',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ncPeriodeId',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ncPeriodeLibelle',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ncPeriodeLibelle',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeLibelleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ncPeriodeLibelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ncPeriodeLibelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ncPeriodeLibelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeLibelleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ncPeriodeLibelle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ncPeriodeLibelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ncPeriodeLibelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ncPeriodeLibelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> ncPeriodeLibelleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ncPeriodeLibelle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ncPeriodeLibelle',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      ncPeriodeLibelleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ncPeriodeLibelle',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rang',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rang',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rang',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangNiveauEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rangNiveau',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangNiveauGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rangNiveau',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangNiveauLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rangNiveau',
        value: value,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> rangNiveauBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rangNiveau',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> refCodePeriodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refCodePeriode',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refCodePeriode',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> refCodePeriodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refCodePeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refCodePeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> refCodePeriodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refCodePeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> refCodePeriodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refCodePeriode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'refCodePeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> refCodePeriodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'refCodePeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> refCodePeriodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refCodePeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition> refCodePeriodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refCodePeriode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refCodePeriode',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refCodePeriode',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refCodePeriodicite',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refCodePeriodicite',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refCodePeriodicite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refCodePeriodicite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refCodePeriodicite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refCodePeriodicite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'refCodePeriodicite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'refCodePeriodicite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refCodePeriodicite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refCodePeriodicite',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refCodePeriodicite',
        value: '',
      ));
    });
  }

  QueryBuilder<Periode, Periode, QAfterFilterCondition>
      refCodePeriodiciteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refCodePeriodicite',
        value: '',
      ));
    });
  }
}

extension PeriodeQueryObject
    on QueryBuilder<Periode, Periode, QFilterCondition> {}

extension PeriodeQueryLinks
    on QueryBuilder<Periode, Periode, QFilterCondition> {}

extension PeriodeQuerySortBy on QueryBuilder<Periode, Periode, QSortBy> {
  QueryBuilder<Periode, Periode, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByCreditDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleCourtAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtAr', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleCourtArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtAr', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleCourtLt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtLt', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleCourtLtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtLt', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongAr', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongAr', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongFrCycle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrCycle', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongFrCycleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrCycle', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongFrNiveau() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrNiveau', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongFrNiveauDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrNiveau', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongLt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongLt', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByLibelleLongLtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongLt', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByNcPeriodeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeCode', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByNcPeriodeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeCode', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByNcPeriodeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeId', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByNcPeriodeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeId', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByNcPeriodeLibelle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeLibelle', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByNcPeriodeLibelleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeLibelle', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rang', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rang', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRangNiveau() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangNiveau', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRangNiveauDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangNiveau', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRefCodePeriode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriode', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRefCodePeriodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriode', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRefCodePeriodicite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriodicite', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> sortByRefCodePeriodiciteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriodicite', Sort.desc);
    });
  }
}

extension PeriodeQuerySortThenBy
    on QueryBuilder<Periode, Periode, QSortThenBy> {
  QueryBuilder<Periode, Periode, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByCreditDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenById_() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenById_Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleCourtAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtAr', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleCourtArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtAr', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleCourtLt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtLt', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleCourtLtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleCourtLt', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongAr', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongAr', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongFrCycle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrCycle', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongFrCycleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrCycle', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongFrNiveau() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrNiveau', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongFrNiveauDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongFrNiveau', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongLt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongLt', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByLibelleLongLtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelleLongLt', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByNcPeriodeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeCode', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByNcPeriodeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeCode', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByNcPeriodeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeId', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByNcPeriodeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeId', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByNcPeriodeLibelle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeLibelle', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByNcPeriodeLibelleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ncPeriodeLibelle', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rang', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rang', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRangNiveau() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangNiveau', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRangNiveauDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rangNiveau', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRefCodePeriode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriode', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRefCodePeriodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriode', Sort.desc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRefCodePeriodicite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriodicite', Sort.asc);
    });
  }

  QueryBuilder<Periode, Periode, QAfterSortBy> thenByRefCodePeriodiciteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCodePeriodicite', Sort.desc);
    });
  }
}

extension PeriodeQueryWhereDistinct
    on QueryBuilder<Periode, Periode, QDistinct> {
  QueryBuilder<Periode, Periode, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'credit');
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByLibelleCourtAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libelleCourtAr',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByLibelleCourtLt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libelleCourtLt',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByLibelleLongAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libelleLongAr',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByLibelleLongFrCycle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libelleLongFrCycle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByLibelleLongFrNiveau(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libelleLongFrNiveau',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByLibelleLongLt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libelleLongLt',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByNcPeriodeCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ncPeriodeCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByNcPeriodeId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ncPeriodeId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByNcPeriodeLibelle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ncPeriodeLibelle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByRang() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rang');
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByRangNiveau() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rangNiveau');
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByRefCodePeriode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refCodePeriode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Periode, Periode, QDistinct> distinctByRefCodePeriodicite(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refCodePeriodicite',
          caseSensitive: caseSensitive);
    });
  }
}

extension PeriodeQueryProperty
    on QueryBuilder<Periode, Periode, QQueryProperty> {
  QueryBuilder<Periode, int, QQueryOperations> id_Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_');
    });
  }

  QueryBuilder<Periode, String, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<Periode, int, QQueryOperations> creditProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'credit');
    });
  }

  QueryBuilder<Periode, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Periode, String?, QQueryOperations> libelleCourtArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libelleCourtAr');
    });
  }

  QueryBuilder<Periode, String?, QQueryOperations> libelleCourtLtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libelleCourtLt');
    });
  }

  QueryBuilder<Periode, String, QQueryOperations> libelleLongArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libelleLongAr');
    });
  }

  QueryBuilder<Periode, String, QQueryOperations> libelleLongFrCycleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libelleLongFrCycle');
    });
  }

  QueryBuilder<Periode, String, QQueryOperations>
      libelleLongFrNiveauProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libelleLongFrNiveau');
    });
  }

  QueryBuilder<Periode, String, QQueryOperations> libelleLongLtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libelleLongLt');
    });
  }

  QueryBuilder<Periode, String?, QQueryOperations> ncPeriodeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ncPeriodeCode');
    });
  }

  QueryBuilder<Periode, String?, QQueryOperations> ncPeriodeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ncPeriodeId');
    });
  }

  QueryBuilder<Periode, String?, QQueryOperations> ncPeriodeLibelleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ncPeriodeLibelle');
    });
  }

  QueryBuilder<Periode, int, QQueryOperations> rangProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rang');
    });
  }

  QueryBuilder<Periode, int, QQueryOperations> rangNiveauProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rangNiveau');
    });
  }

  QueryBuilder<Periode, String?, QQueryOperations> refCodePeriodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refCodePeriode');
    });
  }

  QueryBuilder<Periode, String?, QQueryOperations>
      refCodePeriodiciteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refCodePeriodicite');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodeImpl _$$PeriodeImplFromJson(Map<String, dynamic> json) =>
    _$PeriodeImpl(
      id: json['id'] as int,
      code: json['code'] as String,
      libelleLongLt: json['libelleLongLt'] as String,
      libelleLongAr: json['libelleLongAr'] as String,
      libelleCourtLt: json['libelleCourtLt'] as String?,
      libelleCourtAr: json['libelleCourtAr'] as String?,
      rang: json['rang'] as int,
      credit: json['credit'] as int,
      refCodePeriodicite: json['refCodePeriodicite'] as String?,
      rangNiveau: json['rangNiveau'] as int,
      refCodePeriode: json['refCodePeriode'] as String?,
      libelleLongFrNiveau: json['libelleLongFrNiveau'] as String,
      libelleLongFrCycle: json['libelleLongFrCycle'] as String,
      ncPeriodeId: json['ncPeriodeId'] as String?,
      ncPeriodeCode: json['ncPeriodeCode'] as String?,
      ncPeriodeLibelle: json['ncPeriodeLibelle'] as String?,
    );

Map<String, dynamic> _$$PeriodeImplToJson(_$PeriodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'libelleLongLt': instance.libelleLongLt,
      'libelleLongAr': instance.libelleLongAr,
      'libelleCourtLt': instance.libelleCourtLt,
      'libelleCourtAr': instance.libelleCourtAr,
      'rang': instance.rang,
      'credit': instance.credit,
      'refCodePeriodicite': instance.refCodePeriodicite,
      'rangNiveau': instance.rangNiveau,
      'refCodePeriode': instance.refCodePeriode,
      'libelleLongFrNiveau': instance.libelleLongFrNiveau,
      'libelleLongFrCycle': instance.libelleLongFrCycle,
      'ncPeriodeId': instance.ncPeriodeId,
      'ncPeriodeCode': instance.ncPeriodeCode,
      'ncPeriodeLibelle': instance.ncPeriodeLibelle,
    };
