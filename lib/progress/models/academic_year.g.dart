// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_year.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAcademicYearCollection on Isar {
  IsarCollection<AcademicYear> get academicYears => this.collection();
}

const AcademicYearSchema = CollectionSchema(
  name: r'AcademicYear',
  id: -7718643921016747862,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.string,
    ),
    r'libelle': PropertySchema(
      id: 1,
      name: r'libelle',
      type: IsarType.string,
    )
  },
  estimateSize: _academicYearEstimateSize,
  serialize: _academicYearSerialize,
  deserialize: _academicYearDeserialize,
  deserializeProp: _academicYearDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _academicYearGetId,
  getLinks: _academicYearGetLinks,
  attach: _academicYearAttach,
  version: '3.1.0+1',
);

int _academicYearEstimateSize(
  AcademicYear object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.code.length * 3;
  {
    final value = object.libelle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _academicYearSerialize(
  AcademicYear object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeString(offsets[1], object.libelle);
}

AcademicYear _academicYearDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AcademicYear(
    code: reader.readString(offsets[0]),
    id: id,
    libelle: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _academicYearDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _academicYearGetId(AcademicYear object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _academicYearGetLinks(AcademicYear object) {
  return [];
}

void _academicYearAttach(
    IsarCollection<dynamic> col, Id id, AcademicYear object) {}

extension AcademicYearQueryWhereSort
    on QueryBuilder<AcademicYear, AcademicYear, QWhere> {
  QueryBuilder<AcademicYear, AcademicYear, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AcademicYearQueryWhere
    on QueryBuilder<AcademicYear, AcademicYear, QWhereClause> {
  QueryBuilder<AcademicYear, AcademicYear, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AcademicYearQueryFilter
    on QueryBuilder<AcademicYear, AcademicYear, QFilterCondition> {
  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> codeEqualTo(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      codeGreaterThan(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> codeLessThan(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> codeBetween(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      codeStartsWith(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> codeEndsWith(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> codeContains(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> codeMatches(
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'libelle',
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'libelle',
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libelle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libelle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libelle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libelle',
        value: '',
      ));
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterFilterCondition>
      libelleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libelle',
        value: '',
      ));
    });
  }
}

extension AcademicYearQueryObject
    on QueryBuilder<AcademicYear, AcademicYear, QFilterCondition> {}

extension AcademicYearQueryLinks
    on QueryBuilder<AcademicYear, AcademicYear, QFilterCondition> {}

extension AcademicYearQuerySortBy
    on QueryBuilder<AcademicYear, AcademicYear, QSortBy> {
  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> sortByLibelle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelle', Sort.asc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> sortByLibelleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelle', Sort.desc);
    });
  }
}

extension AcademicYearQuerySortThenBy
    on QueryBuilder<AcademicYear, AcademicYear, QSortThenBy> {
  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> thenByLibelle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelle', Sort.asc);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QAfterSortBy> thenByLibelleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libelle', Sort.desc);
    });
  }
}

extension AcademicYearQueryWhereDistinct
    on QueryBuilder<AcademicYear, AcademicYear, QDistinct> {
  QueryBuilder<AcademicYear, AcademicYear, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AcademicYear, AcademicYear, QDistinct> distinctByLibelle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libelle', caseSensitive: caseSensitive);
    });
  }
}

extension AcademicYearQueryProperty
    on QueryBuilder<AcademicYear, AcademicYear, QQueryProperty> {
  QueryBuilder<AcademicYear, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AcademicYear, String, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<AcademicYear, String?, QQueryOperations> libelleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libelle');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcademicYearImpl _$$AcademicYearImplFromJson(Map<String, dynamic> json) =>
    _$AcademicYearImpl(
      id: json['id'] as int,
      code: json['code'] as String,
      libelle: json['libelle'] as String?,
    );

Map<String, dynamic> _$$AcademicYearImplToJson(_$AcademicYearImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'libelle': instance.libelle,
    };
