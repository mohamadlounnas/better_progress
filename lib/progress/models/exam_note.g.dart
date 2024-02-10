// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_note.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetExamNoteCollection on Isar {
  IsarCollection<ExamNote> get examNotes => this.collection();
}

const ExamNoteSchema = CollectionSchema(
  name: r'ExamNote',
  id: 8657183018114318251,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'idPeriode': PropertySchema(
      id: 1,
      name: r'idPeriode',
      type: IsarType.long,
    ),
    r'mcLibelleAr': PropertySchema(
      id: 2,
      name: r'mcLibelleAr',
      type: IsarType.string,
    ),
    r'mcLibelleFr': PropertySchema(
      id: 3,
      name: r'mcLibelleFr',
      type: IsarType.string,
    ),
    r'noteExamen': PropertySchema(
      id: 4,
      name: r'noteExamen',
      type: IsarType.double,
    ),
    r'planningSessionId': PropertySchema(
      id: 5,
      name: r'planningSessionId',
      type: IsarType.long,
    ),
    r'planningSessionIntitule': PropertySchema(
      id: 6,
      name: r'planningSessionIntitule',
      type: IsarType.string,
    ),
    r'rattachementMcCoefficient': PropertySchema(
      id: 7,
      name: r'rattachementMcCoefficient',
      type: IsarType.double,
    ),
    r'rattachementMcCredit': PropertySchema(
      id: 8,
      name: r'rattachementMcCredit',
      type: IsarType.double,
    ),
    r'rattachementMcId': PropertySchema(
      id: 9,
      name: r'rattachementMcId',
      type: IsarType.long,
    ),
    r'total': PropertySchema(
      id: 10,
      name: r'total',
      type: IsarType.double,
    ),
    r'ueCode': PropertySchema(
      id: 11,
      name: r'ueCode',
      type: IsarType.string,
    ),
    r'ueNatureLlFr': PropertySchema(
      id: 12,
      name: r'ueNatureLlFr',
      type: IsarType.string,
    )
  },
  estimateSize: _examNoteEstimateSize,
  serialize: _examNoteSerialize,
  deserialize: _examNoteDeserialize,
  deserializeProp: _examNoteDeserializeProp,
  idName: r'id_',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _examNoteGetId,
  getLinks: _examNoteGetLinks,
  attach: _examNoteAttach,
  version: '3.1.0+1',
);

int _examNoteEstimateSize(
  ExamNote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.mcLibelleAr.length * 3;
  bytesCount += 3 + object.mcLibelleFr.length * 3;
  bytesCount += 3 + object.planningSessionIntitule.length * 3;
  bytesCount += 3 + object.ueCode.length * 3;
  bytesCount += 3 + object.ueNatureLlFr.length * 3;
  return bytesCount;
}

void _examNoteSerialize(
  ExamNote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeLong(offsets[1], object.idPeriode);
  writer.writeString(offsets[2], object.mcLibelleAr);
  writer.writeString(offsets[3], object.mcLibelleFr);
  writer.writeDouble(offsets[4], object.noteExamen);
  writer.writeLong(offsets[5], object.planningSessionId);
  writer.writeString(offsets[6], object.planningSessionIntitule);
  writer.writeDouble(offsets[7], object.rattachementMcCoefficient);
  writer.writeDouble(offsets[8], object.rattachementMcCredit);
  writer.writeLong(offsets[9], object.rattachementMcId);
  writer.writeDouble(offsets[10], object.total);
  writer.writeString(offsets[11], object.ueCode);
  writer.writeString(offsets[12], object.ueNatureLlFr);
}

ExamNote _examNoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExamNote(
    id: reader.readLong(offsets[0]),
    idPeriode: reader.readLong(offsets[1]),
    mcLibelleAr: reader.readString(offsets[2]),
    mcLibelleFr: reader.readString(offsets[3]),
    noteExamen: reader.readDoubleOrNull(offsets[4]),
    planningSessionId: reader.readLong(offsets[5]),
    planningSessionIntitule: reader.readString(offsets[6]),
    rattachementMcCoefficient: reader.readDouble(offsets[7]),
    rattachementMcCredit: reader.readDouble(offsets[8]),
    rattachementMcId: reader.readLong(offsets[9]),
    ueCode: reader.readString(offsets[11]),
    ueNatureLlFr: reader.readString(offsets[12]),
  );
  return object;
}

P _examNoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _examNoteGetId(ExamNote object) {
  return object.id_;
}

List<IsarLinkBase<dynamic>> _examNoteGetLinks(ExamNote object) {
  return [];
}

void _examNoteAttach(IsarCollection<dynamic> col, Id id, ExamNote object) {}

extension ExamNoteQueryWhereSort on QueryBuilder<ExamNote, ExamNote, QWhere> {
  QueryBuilder<ExamNote, ExamNote, QAfterWhere> anyId_() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExamNoteQueryWhere on QueryBuilder<ExamNote, ExamNote, QWhereClause> {
  QueryBuilder<ExamNote, ExamNote, QAfterWhereClause> id_EqualTo(Id id_) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id_,
        upper: id_,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterWhereClause> id_NotEqualTo(Id id_) {
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

  QueryBuilder<ExamNote, ExamNote, QAfterWhereClause> id_GreaterThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id_, includeLower: include),
      );
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterWhereClause> id_LessThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id_, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterWhereClause> id_Between(
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

extension ExamNoteQueryFilter
    on QueryBuilder<ExamNote, ExamNote, QFilterCondition> {
  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idPeriodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idPeriode',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idPeriodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idPeriode',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idPeriodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idPeriode',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> idPeriodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idPeriode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> id_EqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> id_GreaterThan(
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

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> id_LessThan(
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

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> id_Between(
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

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      mcLibelleArGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mcLibelleAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mcLibelleAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mcLibelleAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mcLibelleAr',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      mcLibelleArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mcLibelleAr',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      mcLibelleFrGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mcLibelleFr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mcLibelleFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mcLibelleFr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> mcLibelleFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mcLibelleFr',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      mcLibelleFrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mcLibelleFr',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> noteExamenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noteExamen',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      noteExamenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noteExamen',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> noteExamenEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteExamen',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> noteExamenGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noteExamen',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> noteExamenLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noteExamen',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> noteExamenBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noteExamen',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'planningSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'planningSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'planningSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'planningSessionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'planningSessionIntitule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'planningSessionIntitule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'planningSessionIntitule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'planningSessionIntitule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'planningSessionIntitule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'planningSessionIntitule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'planningSessionIntitule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'planningSessionIntitule',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'planningSessionIntitule',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      planningSessionIntituleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'planningSessionIntitule',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCoefficientEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rattachementMcCoefficient',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCoefficientGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rattachementMcCoefficient',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCoefficientLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rattachementMcCoefficient',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCoefficientBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rattachementMcCoefficient',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCreditEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rattachementMcCredit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCreditGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rattachementMcCredit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCreditLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rattachementMcCredit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcCreditBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rattachementMcCredit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rattachementMcId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rattachementMcId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rattachementMcId',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      rattachementMcIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rattachementMcId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> totalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'total',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> totalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'total',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> totalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> totalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> totalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> totalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'total',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ueCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ueCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ueCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ueCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ueCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ueCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ueCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ueCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ueCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ueCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueNatureLlFrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ueNatureLlFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      ueNatureLlFrGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ueNatureLlFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueNatureLlFrLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ueNatureLlFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueNatureLlFrBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ueNatureLlFr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      ueNatureLlFrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ueNatureLlFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueNatureLlFrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ueNatureLlFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueNatureLlFrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ueNatureLlFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition> ueNatureLlFrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ueNatureLlFr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      ueNatureLlFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ueNatureLlFr',
        value: '',
      ));
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterFilterCondition>
      ueNatureLlFrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ueNatureLlFr',
        value: '',
      ));
    });
  }
}

extension ExamNoteQueryObject
    on QueryBuilder<ExamNote, ExamNote, QFilterCondition> {}

extension ExamNoteQueryLinks
    on QueryBuilder<ExamNote, ExamNote, QFilterCondition> {}

extension ExamNoteQuerySortBy on QueryBuilder<ExamNote, ExamNote, QSortBy> {
  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByIdPeriode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPeriode', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByIdPeriodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPeriode', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByMcLibelleAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleAr', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByMcLibelleArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleAr', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByMcLibelleFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleFr', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByMcLibelleFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleFr', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByNoteExamen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteExamen', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByNoteExamenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteExamen', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByPlanningSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionId', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByPlanningSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionId', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      sortByPlanningSessionIntitule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionIntitule', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      sortByPlanningSessionIntituleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionIntitule', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      sortByRattachementMcCoefficient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCoefficient', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      sortByRattachementMcCoefficientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCoefficient', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByRattachementMcCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCredit', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      sortByRattachementMcCreditDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCredit', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByRattachementMcId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcId', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByRattachementMcIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcId', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByUeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueCode', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByUeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueCode', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByUeNatureLlFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueNatureLlFr', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> sortByUeNatureLlFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueNatureLlFr', Sort.desc);
    });
  }
}

extension ExamNoteQuerySortThenBy
    on QueryBuilder<ExamNote, ExamNote, QSortThenBy> {
  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByIdPeriode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPeriode', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByIdPeriodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPeriode', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenById_() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenById_Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByMcLibelleAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleAr', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByMcLibelleArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleAr', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByMcLibelleFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleFr', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByMcLibelleFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mcLibelleFr', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByNoteExamen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteExamen', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByNoteExamenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteExamen', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByPlanningSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionId', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByPlanningSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionId', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      thenByPlanningSessionIntitule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionIntitule', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      thenByPlanningSessionIntituleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'planningSessionIntitule', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      thenByRattachementMcCoefficient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCoefficient', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      thenByRattachementMcCoefficientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCoefficient', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByRattachementMcCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCredit', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy>
      thenByRattachementMcCreditDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcCredit', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByRattachementMcId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcId', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByRattachementMcIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rattachementMcId', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByUeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueCode', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByUeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueCode', Sort.desc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByUeNatureLlFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueNatureLlFr', Sort.asc);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QAfterSortBy> thenByUeNatureLlFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ueNatureLlFr', Sort.desc);
    });
  }
}

extension ExamNoteQueryWhereDistinct
    on QueryBuilder<ExamNote, ExamNote, QDistinct> {
  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByIdPeriode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idPeriode');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByMcLibelleAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mcLibelleAr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByMcLibelleFr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mcLibelleFr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByNoteExamen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noteExamen');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByPlanningSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'planningSessionId');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByPlanningSessionIntitule(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'planningSessionIntitule',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct>
      distinctByRattachementMcCoefficient() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rattachementMcCoefficient');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByRattachementMcCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rattachementMcCredit');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByRattachementMcId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rattachementMcId');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total');
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByUeCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ueCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExamNote, ExamNote, QDistinct> distinctByUeNatureLlFr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ueNatureLlFr', caseSensitive: caseSensitive);
    });
  }
}

extension ExamNoteQueryProperty
    on QueryBuilder<ExamNote, ExamNote, QQueryProperty> {
  QueryBuilder<ExamNote, int, QQueryOperations> id_Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_');
    });
  }

  QueryBuilder<ExamNote, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ExamNote, int, QQueryOperations> idPeriodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idPeriode');
    });
  }

  QueryBuilder<ExamNote, String, QQueryOperations> mcLibelleArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mcLibelleAr');
    });
  }

  QueryBuilder<ExamNote, String, QQueryOperations> mcLibelleFrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mcLibelleFr');
    });
  }

  QueryBuilder<ExamNote, double?, QQueryOperations> noteExamenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noteExamen');
    });
  }

  QueryBuilder<ExamNote, int, QQueryOperations> planningSessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'planningSessionId');
    });
  }

  QueryBuilder<ExamNote, String, QQueryOperations>
      planningSessionIntituleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'planningSessionIntitule');
    });
  }

  QueryBuilder<ExamNote, double, QQueryOperations>
      rattachementMcCoefficientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rattachementMcCoefficient');
    });
  }

  QueryBuilder<ExamNote, double, QQueryOperations>
      rattachementMcCreditProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rattachementMcCredit');
    });
  }

  QueryBuilder<ExamNote, int, QQueryOperations> rattachementMcIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rattachementMcId');
    });
  }

  QueryBuilder<ExamNote, double?, QQueryOperations> totalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total');
    });
  }

  QueryBuilder<ExamNote, String, QQueryOperations> ueCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ueCode');
    });
  }

  QueryBuilder<ExamNote, String, QQueryOperations> ueNatureLlFrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ueNatureLlFr');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamNoteImpl _$$ExamNoteImplFromJson(Map<String, dynamic> json) =>
    _$ExamNoteImpl(
      id: json['id'] as int,
      rattachementMcId: json['rattachementMcId'] as int,
      ueCode: json['ueCode'] as String,
      ueNatureLlFr: json['ueNatureLlFr'] as String,
      mcLibelleFr: json['mcLibelleFr'] as String,
      mcLibelleAr: json['mcLibelleAr'] as String,
      rattachementMcCoefficient:
          (json['rattachementMcCoefficient'] as num).toDouble(),
      rattachementMcCredit: (json['rattachementMcCredit'] as num).toDouble(),
      planningSessionId: json['planningSessionId'] as int,
      planningSessionIntitule: json['planningSessionIntitule'] as String,
      idPeriode: json['idPeriode'] as int,
      noteExamen: (json['noteExamen'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ExamNoteImplToJson(_$ExamNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rattachementMcId': instance.rattachementMcId,
      'ueCode': instance.ueCode,
      'ueNatureLlFr': instance.ueNatureLlFr,
      'mcLibelleFr': instance.mcLibelleFr,
      'mcLibelleAr': instance.mcLibelleAr,
      'rattachementMcCoefficient': instance.rattachementMcCoefficient,
      'rattachementMcCredit': instance.rattachementMcCredit,
      'planningSessionId': instance.planningSessionId,
      'planningSessionIntitule': instance.planningSessionIntitule,
      'idPeriode': instance.idPeriode,
      'noteExamen': instance.noteExamen,
    };
