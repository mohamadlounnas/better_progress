// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_note.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCCNoteCollection on Isar {
  IsarCollection<CCNote> get cCNotes => this.collection();
}

const CCNoteSchema = CollectionSchema(
  name: r'CCNote',
  id: 3380762559964095993,
  properties: {
    r'absent': PropertySchema(
      id: 0,
      name: r'absent',
      type: IsarType.bool,
    ),
    r'apCode': PropertySchema(
      id: 1,
      name: r'apCode',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'llPeriode': PropertySchema(
      id: 3,
      name: r'llPeriode',
      type: IsarType.string,
    ),
    r'llPeriodeAr': PropertySchema(
      id: 4,
      name: r'llPeriodeAr',
      type: IsarType.string,
    ),
    r'note': PropertySchema(
      id: 5,
      name: r'note',
      type: IsarType.double,
    ),
    r'rattachementMcMcLibelleAr': PropertySchema(
      id: 6,
      name: r'rattachementMcMcLibelleAr',
      type: IsarType.string,
    ),
    r'rattachementMcMcLibelleFr': PropertySchema(
      id: 7,
      name: r'rattachementMcMcLibelleFr',
      type: IsarType.string,
    )
  },
  estimateSize: _cCNoteEstimateSize,
  serialize: _cCNoteSerialize,
  deserialize: _cCNoteDeserialize,
  deserializeProp: _cCNoteDeserializeProp,
  idName: r'id_',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cCNoteGetId,
  getLinks: _cCNoteGetLinks,
  attach: _cCNoteAttach,
  version: '3.1.0+1',
);

int _cCNoteEstimateSize(
  CCNote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apCode.length * 3;
  bytesCount += 3 + object.llPeriode.length * 3;
  bytesCount += 3 + object.llPeriodeAr.length * 3;
  bytesCount += 3 + object.rattachementMcMcLibelleAr.length * 3;
  bytesCount += 3 + object.rattachementMcMcLibelleFr.length * 3;
  return bytesCount;
}

void _cCNoteSerialize(
  CCNote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.absent);
  writer.writeString(offsets[1], object.apCode);
  writer.writeLong(offsets[2], object.id);
  writer.writeString(offsets[3], object.llPeriode);
  writer.writeString(offsets[4], object.llPeriodeAr);
  writer.writeDouble(offsets[5], object.note);
  writer.writeString(offsets[6], object.rattachementMcMcLibelleAr);
  writer.writeString(offsets[7], object.rattachementMcMcLibelleFr);
}

CCNote _cCNoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CCNote(
    absent: reader.readBoolOrNull(offsets[0]),
    apCode: reader.readString(offsets[1]),
    id: reader.readLong(offsets[2]),
    llPeriode: reader.readString(offsets[3]),
    llPeriodeAr: reader.readString(offsets[4]),
    note: reader.readDoubleOrNull(offsets[5]),
    rattachementMcMcLibelleAr: reader.readString(offsets[6]),
    rattachementMcMcLibelleFr: reader.readString(offsets[7]),
  );
  return object;
}

P _cCNoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cCNoteGetId(CCNote object) {
  return object.id_;
}

List<IsarLinkBase<dynamic>> _cCNoteGetLinks(CCNote object) {
  return [];
}

void _cCNoteAttach(IsarCollection<dynamic> col, Id id, CCNote object) {}

extension CCNoteQueryWhereSort on QueryBuilder<CCNote, CCNote, QWhere> {
  QueryBuilder<CCNote, CCNote, QAfterWhere> anyId_() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CCNoteQueryWhere on QueryBuilder<CCNote, CCNote, QWhereClause> {
  QueryBuilder<CCNote, CCNote, QAfterWhereClause> id_EqualTo(Id id_) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id_,
        upper: id_,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterWhereClause> id_NotEqualTo(Id id_) {
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

  QueryBuilder<CCNote, CCNote, QAfterWhereClause> id_GreaterThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id_, includeLower: include),
      );
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterWhereClause> id_LessThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id_, includeUpper: include),
      );
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterWhereClause> id_Between(
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

extension CCNoteQueryFilter on QueryBuilder<CCNote, CCNote, QFilterCondition> {
  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> absentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'absent',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> absentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'absent',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> absentEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'absent',
        value: value,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'apCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'apCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'apCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'apCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> apCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> id_EqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> id_GreaterThan(
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

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> id_LessThan(
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

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> id_Between(
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

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'llPeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'llPeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'llPeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'llPeriode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'llPeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'llPeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'llPeriode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'llPeriode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'llPeriode',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'llPeriode',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'llPeriodeAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'llPeriodeAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'llPeriodeAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'llPeriodeAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'llPeriodeAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'llPeriodeAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'llPeriodeAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'llPeriodeAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'llPeriodeAr',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> llPeriodeArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'llPeriodeAr',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> noteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> noteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> noteEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> noteGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'note',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> noteLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'note',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition> noteBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'note',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rattachementMcMcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rattachementMcMcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rattachementMcMcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rattachementMcMcLibelleAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rattachementMcMcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rattachementMcMcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rattachementMcMcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rattachementMcMcLibelleAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rattachementMcMcLibelleAr',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rattachementMcMcLibelleAr',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rattachementMcMcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rattachementMcMcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rattachementMcMcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rattachementMcMcLibelleFr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rattachementMcMcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rattachementMcMcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rattachementMcMcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rattachementMcMcLibelleFr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rattachementMcMcLibelleFr',
        value: '',
      ));
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterFilterCondition>
      rattachementMcMcLibelleFrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rattachementMcMcLibelleFr',
        value: '',
      ));
    });
  }
}

extension CCNoteQueryObject on QueryBuilder<CCNote, CCNote, QFilterCondition> {}

extension CCNoteQueryLinks on QueryBuilder<CCNote, CCNote, QFilterCondition> {}

extension CCNoteQuerySortBy on QueryBuilder<CCNote, CCNote, QSortBy> {
  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByAbsent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'absent', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByAbsentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'absent', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByApCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apCode', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByApCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apCode', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByLlPeriode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriode', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByLlPeriodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriode', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByLlPeriodeAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriodeAr', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByLlPeriodeArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriodeAr', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByRattachementMcMcLibelleAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleAr', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy>
      sortByRattachementMcMcLibelleArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleAr', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> sortByRattachementMcMcLibelleFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleFr', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy>
      sortByRattachementMcMcLibelleFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleFr', Sort.desc);
    });
  }
}

extension CCNoteQuerySortThenBy on QueryBuilder<CCNote, CCNote, QSortThenBy> {
  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByAbsent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'absent', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByAbsentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'absent', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByApCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apCode', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByApCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apCode', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenById_() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenById_Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByLlPeriode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriode', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByLlPeriodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriode', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByLlPeriodeAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriodeAr', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByLlPeriodeArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'llPeriodeAr', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByRattachementMcMcLibelleAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleAr', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy>
      thenByRattachementMcMcLibelleArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleAr', Sort.desc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy> thenByRattachementMcMcLibelleFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleFr', Sort.asc);
    });
  }

  QueryBuilder<CCNote, CCNote, QAfterSortBy>
      thenByRattachementMcMcLibelleFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcMcLibelleFr', Sort.desc);
    });
  }
}

extension CCNoteQueryWhereDistinct on QueryBuilder<CCNote, CCNote, QDistinct> {
  QueryBuilder<CCNote, CCNote, QDistinct> distinctByAbsent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'absent');
    });
  }

  QueryBuilder<CCNote, CCNote, QDistinct> distinctByApCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CCNote, CCNote, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<CCNote, CCNote, QDistinct> distinctByLlPeriode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'llPeriode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CCNote, CCNote, QDistinct> distinctByLlPeriodeAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'llPeriodeAr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CCNote, CCNote, QDistinct> distinctByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'note');
    });
  }

  QueryBuilder<CCNote, CCNote, QDistinct> distinctByRattachementMcMcLibelleAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rattachementMcMcLibelleAr',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CCNote, CCNote, QDistinct> distinctByRattachementMcMcLibelleFr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rattachementMcMcLibelleFr',
          caseSensitive: caseSensitive);
    });
  }
}

extension CCNoteQueryProperty on QueryBuilder<CCNote, CCNote, QQueryProperty> {
  QueryBuilder<CCNote, int, QQueryOperations> id_Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_');
    });
  }

  QueryBuilder<CCNote, bool?, QQueryOperations> absentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'absent');
    });
  }

  QueryBuilder<CCNote, String, QQueryOperations> apCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apCode');
    });
  }

  QueryBuilder<CCNote, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CCNote, String, QQueryOperations> llPeriodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'llPeriode');
    });
  }

  QueryBuilder<CCNote, String, QQueryOperations> llPeriodeArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'llPeriodeAr');
    });
  }

  QueryBuilder<CCNote, double?, QQueryOperations> noteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'note');
    });
  }

  QueryBuilder<CCNote, String, QQueryOperations>
      rattachementMcMcLibelleArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rattachementMcMcLibelleAr');
    });
  }

  QueryBuilder<CCNote, String, QQueryOperations>
      rattachementMcMcLibelleFrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rattachementMcMcLibelleFr');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CCNoteImpl _$$CCNoteImplFromJson(Map<String, dynamic> json) => _$CCNoteImpl(
      id: (json['id'] as num).toInt(),
      note: (json['note'] as num?)?.toDouble(),
      absent: json['absent'] as bool?,
      llPeriode: json['llPeriode'] as String,
      llPeriodeAr: json['llPeriodeAr'] as String,
      apCode: json['apCode'] as String,
      rattachementMcMcLibelleFr: json['rattachementMcMcLibelleFr'] as String,
      rattachementMcMcLibelleAr: json['rattachementMcMcLibelleAr'] as String,
    );

Map<String, dynamic> _$$CCNoteImplToJson(_$CCNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'absent': instance.absent,
      'llPeriode': instance.llPeriode,
      'llPeriodeAr': instance.llPeriodeAr,
      'apCode': instance.apCode,
      'rattachementMcMcLibelleFr': instance.rattachementMcMcLibelleFr,
      'rattachementMcMcLibelleAr': instance.rattachementMcMcLibelleAr,
    };
