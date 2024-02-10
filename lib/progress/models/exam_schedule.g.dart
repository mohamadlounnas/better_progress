// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_schedule.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetExamScheduleCollection on Isar {
  IsarCollection<ExamSchedule> get examSchedules => this.collection();
}

const ExamScheduleSchema = CollectionSchema(
  name: r'ExamSchedule',
  id: -4098074842594310605,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    )
  },
  estimateSize: _examScheduleEstimateSize,
  serialize: _examScheduleSerialize,
  deserialize: _examScheduleDeserialize,
  deserializeProp: _examScheduleDeserializeProp,
  idName: r'id_',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _examScheduleGetId,
  getLinks: _examScheduleGetLinks,
  attach: _examScheduleAttach,
  version: '3.1.0+1',
);

int _examScheduleEstimateSize(
  ExamSchedule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _examScheduleSerialize(
  ExamSchedule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
}

ExamSchedule _examScheduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExamSchedule(
    id: reader.readLong(offsets[0]),
  );
  return object;
}

P _examScheduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _examScheduleGetId(ExamSchedule object) {
  return object.id_;
}

List<IsarLinkBase<dynamic>> _examScheduleGetLinks(ExamSchedule object) {
  return [];
}

void _examScheduleAttach(
    IsarCollection<dynamic> col, Id id, ExamSchedule object) {}

extension ExamScheduleQueryWhereSort
    on QueryBuilder<ExamSchedule, ExamSchedule, QWhere> {
  QueryBuilder<ExamSchedule, ExamSchedule, QAfterWhere> anyId_() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExamScheduleQueryWhere
    on QueryBuilder<ExamSchedule, ExamSchedule, QWhereClause> {
  QueryBuilder<ExamSchedule, ExamSchedule, QAfterWhereClause> id_EqualTo(
      Id id_) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id_,
        upper: id_,
      ));
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterWhereClause> id_NotEqualTo(
      Id id_) {
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

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterWhereClause> id_GreaterThan(
      Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id_, includeLower: include),
      );
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterWhereClause> id_LessThan(
      Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id_, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterWhereClause> id_Between(
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

extension ExamScheduleQueryFilter
    on QueryBuilder<ExamSchedule, ExamSchedule, QFilterCondition> {
  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition> id_EqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition>
      id_GreaterThan(
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

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition> id_LessThan(
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

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterFilterCondition> id_Between(
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
}

extension ExamScheduleQueryObject
    on QueryBuilder<ExamSchedule, ExamSchedule, QFilterCondition> {}

extension ExamScheduleQueryLinks
    on QueryBuilder<ExamSchedule, ExamSchedule, QFilterCondition> {}

extension ExamScheduleQuerySortBy
    on QueryBuilder<ExamSchedule, ExamSchedule, QSortBy> {
  QueryBuilder<ExamSchedule, ExamSchedule, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ExamScheduleQuerySortThenBy
    on QueryBuilder<ExamSchedule, ExamSchedule, QSortThenBy> {
  QueryBuilder<ExamSchedule, ExamSchedule, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterSortBy> thenById_() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.asc);
    });
  }

  QueryBuilder<ExamSchedule, ExamSchedule, QAfterSortBy> thenById_Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.desc);
    });
  }
}

extension ExamScheduleQueryWhereDistinct
    on QueryBuilder<ExamSchedule, ExamSchedule, QDistinct> {
  QueryBuilder<ExamSchedule, ExamSchedule, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }
}

extension ExamScheduleQueryProperty
    on QueryBuilder<ExamSchedule, ExamSchedule, QQueryProperty> {
  QueryBuilder<ExamSchedule, int, QQueryOperations> id_Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_');
    });
  }

  QueryBuilder<ExamSchedule, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamScheduleImpl _$$ExamScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ExamScheduleImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$ExamScheduleImplToJson(_$ExamScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
