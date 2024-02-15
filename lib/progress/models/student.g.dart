// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStudentCollection on Isar {
  IsarCollection<Student> get students => this.collection();
}

const StudentSchema = CollectionSchema(
  name: r'Student',
  id: -252783119861727542,
  properties: {
    r'age': PropertySchema(
      id: 0,
      name: r'age',
      type: IsarType.long,
    ),
    r'dateNaissance': PropertySchema(
      id: 1,
      name: r'dateNaissance',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'identifiant': PropertySchema(
      id: 4,
      name: r'identifiant',
      type: IsarType.string,
    ),
    r'lieuNaissance': PropertySchema(
      id: 5,
      name: r'lieuNaissance',
      type: IsarType.string,
    ),
    r'lieuNaissanceArabe': PropertySchema(
      id: 6,
      name: r'lieuNaissanceArabe',
      type: IsarType.string,
    ),
    r'nomArabe': PropertySchema(
      id: 7,
      name: r'nomArabe',
      type: IsarType.string,
    ),
    r'nomLatin': PropertySchema(
      id: 8,
      name: r'nomLatin',
      type: IsarType.string,
    ),
    r'photo': PropertySchema(
      id: 9,
      name: r'photo',
      type: IsarType.string,
    ),
    r'photoUrl': PropertySchema(
      id: 10,
      name: r'photoUrl',
      type: IsarType.string,
    ),
    r'prenomArabe': PropertySchema(
      id: 11,
      name: r'prenomArabe',
      type: IsarType.string,
    ),
    r'prenomLatin': PropertySchema(
      id: 12,
      name: r'prenomLatin',
      type: IsarType.string,
    )
  },
  estimateSize: _studentEstimateSize,
  serialize: _studentSerialize,
  deserialize: _studentDeserialize,
  deserializeProp: _studentDeserializeProp,
  idName: r'id_',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _studentGetId,
  getLinks: _studentGetLinks,
  attach: _studentAttach,
  version: '3.1.0+1',
);

int _studentEstimateSize(
  Student object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dateNaissance.length * 3;
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.identifiant.length * 3;
  bytesCount += 3 + object.lieuNaissance.length * 3;
  bytesCount += 3 + object.lieuNaissanceArabe.length * 3;
  bytesCount += 3 + object.nomArabe.length * 3;
  bytesCount += 3 + object.nomLatin.length * 3;
  {
    final value = object.photo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.photoUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.prenomArabe.length * 3;
  bytesCount += 3 + object.prenomLatin.length * 3;
  return bytesCount;
}

void _studentSerialize(
  Student object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.age);
  writer.writeString(offsets[1], object.dateNaissance);
  writer.writeString(offsets[2], object.email);
  writer.writeLong(offsets[3], object.id);
  writer.writeString(offsets[4], object.identifiant);
  writer.writeString(offsets[5], object.lieuNaissance);
  writer.writeString(offsets[6], object.lieuNaissanceArabe);
  writer.writeString(offsets[7], object.nomArabe);
  writer.writeString(offsets[8], object.nomLatin);
  writer.writeString(offsets[9], object.photo);
  writer.writeString(offsets[10], object.photoUrl);
  writer.writeString(offsets[11], object.prenomArabe);
  writer.writeString(offsets[12], object.prenomLatin);
}

Student _studentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Student(
    dateNaissance: reader.readString(offsets[1]),
    email: reader.readStringOrNull(offsets[2]),
    id: reader.readLong(offsets[3]),
    identifiant: reader.readString(offsets[4]),
    lieuNaissance: reader.readString(offsets[5]),
    lieuNaissanceArabe: reader.readString(offsets[6]),
    nomArabe: reader.readString(offsets[7]),
    nomLatin: reader.readString(offsets[8]),
    photo: reader.readStringOrNull(offsets[9]),
    prenomArabe: reader.readString(offsets[11]),
    prenomLatin: reader.readString(offsets[12]),
  );
  return object;
}

P _studentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
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
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _studentGetId(Student object) {
  return object.id_;
}

List<IsarLinkBase<dynamic>> _studentGetLinks(Student object) {
  return [];
}

void _studentAttach(IsarCollection<dynamic> col, Id id, Student object) {}

extension StudentQueryWhereSort on QueryBuilder<Student, Student, QWhere> {
  QueryBuilder<Student, Student, QAfterWhere> anyId_() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StudentQueryWhere on QueryBuilder<Student, Student, QWhereClause> {
  QueryBuilder<Student, Student, QAfterWhereClause> id_EqualTo(Id id_) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id_,
        upper: id_,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> id_NotEqualTo(Id id_) {
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

  QueryBuilder<Student, Student, QAfterWhereClause> id_GreaterThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id_, includeLower: include),
      );
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> id_LessThan(Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id_, includeUpper: include),
      );
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> id_Between(
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

extension StudentQueryFilter
    on QueryBuilder<Student, Student, QFilterCondition> {
  QueryBuilder<Student, Student, QAfterFilterCondition> ageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'age',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> ageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'age',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> ageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> ageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> ageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> ageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'age',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      dateNaissanceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateNaissance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateNaissance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> dateNaissanceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateNaissance',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      dateNaissanceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateNaissance',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> id_EqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> id_GreaterThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> id_LessThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> id_Between(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identifiant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'identifiant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'identifiant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'identifiant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'identifiant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'identifiant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'identifiant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'identifiant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> identifiantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identifiant',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      identifiantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'identifiant',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lieuNaissance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lieuNaissance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> lieuNaissanceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lieuNaissance',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lieuNaissance',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lieuNaissanceArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lieuNaissanceArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lieuNaissanceArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lieuNaissanceArabe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lieuNaissanceArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lieuNaissanceArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lieuNaissanceArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lieuNaissanceArabe',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lieuNaissanceArabe',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      lieuNaissanceArabeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lieuNaissanceArabe',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomArabe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomArabe',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomArabe',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomArabeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomArabe',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomLatin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomLatin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nomLatinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photo',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photo',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photo',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoUrl',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoUrl',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> photoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prenomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prenomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prenomArabe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prenomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prenomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prenomArabe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prenomArabe',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomArabeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenomArabe',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      prenomArabeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prenomArabe',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prenomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prenomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prenomLatin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prenomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prenomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prenomLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prenomLatin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> prenomLatinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenomLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      prenomLatinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prenomLatin',
        value: '',
      ));
    });
  }
}

extension StudentQueryObject
    on QueryBuilder<Student, Student, QFilterCondition> {}

extension StudentQueryLinks
    on QueryBuilder<Student, Student, QFilterCondition> {}

extension StudentQuerySortBy on QueryBuilder<Student, Student, QSortBy> {
  QueryBuilder<Student, Student, QAfterSortBy> sortByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByDateNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByDateNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByIdentifiant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifiant', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByIdentifiantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifiant', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByLieuNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByLieuNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByLieuNaissanceArabe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissanceArabe', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByLieuNaissanceArabeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissanceArabe', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNomArabe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArabe', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNomArabeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArabe', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNomLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomLatin', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNomLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomLatin', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPhotoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPhotoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPrenomArabe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomArabe', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPrenomArabeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomArabe', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPrenomLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomLatin', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByPrenomLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomLatin', Sort.desc);
    });
  }
}

extension StudentQuerySortThenBy
    on QueryBuilder<Student, Student, QSortThenBy> {
  QueryBuilder<Student, Student, QAfterSortBy> thenByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByDateNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByDateNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenById_() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenById_Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByIdentifiant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifiant', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByIdentifiantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifiant', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByLieuNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByLieuNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByLieuNaissanceArabe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissanceArabe', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByLieuNaissanceArabeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissanceArabe', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNomArabe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArabe', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNomArabeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArabe', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNomLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomLatin', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNomLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomLatin', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPhotoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPhotoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoUrl', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPrenomArabe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomArabe', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPrenomArabeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomArabe', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPrenomLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomLatin', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByPrenomLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenomLatin', Sort.desc);
    });
  }
}

extension StudentQueryWhereDistinct
    on QueryBuilder<Student, Student, QDistinct> {
  QueryBuilder<Student, Student, QDistinct> distinctByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'age');
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByDateNaissance(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateNaissance',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByIdentifiant(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'identifiant', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByLieuNaissance(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lieuNaissance',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByLieuNaissanceArabe(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lieuNaissanceArabe',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByNomArabe(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomArabe', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByNomLatin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomLatin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByPhoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByPhotoUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByPrenomArabe(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prenomArabe', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByPrenomLatin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prenomLatin', caseSensitive: caseSensitive);
    });
  }
}

extension StudentQueryProperty
    on QueryBuilder<Student, Student, QQueryProperty> {
  QueryBuilder<Student, int, QQueryOperations> id_Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_');
    });
  }

  QueryBuilder<Student, int?, QQueryOperations> ageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'age');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> dateNaissanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateNaissance');
    });
  }

  QueryBuilder<Student, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<Student, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> identifiantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'identifiant');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> lieuNaissanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lieuNaissance');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> lieuNaissanceArabeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lieuNaissanceArabe');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> nomArabeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomArabe');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> nomLatinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomLatin');
    });
  }

  QueryBuilder<Student, String?, QQueryOperations> photoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo');
    });
  }

  QueryBuilder<Student, String?, QQueryOperations> photoUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoUrl');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> prenomArabeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prenomArabe');
    });
  }

  QueryBuilder<Student, String, QQueryOperations> prenomLatinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prenomLatin');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as int,
      identifiant: json['identifiant'] as String,
      dateNaissance: json['dateNaissance'] as String,
      nomArabe: json['nomArabe'] as String,
      nomLatin: json['nomLatin'] as String,
      prenomArabe: json['prenomArabe'] as String,
      prenomLatin: json['prenomLatin'] as String,
      lieuNaissance: json['lieuNaissance'] as String,
      lieuNaissanceArabe: json['lieuNaissanceArabe'] as String,
      photo: json['photo'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifiant': instance.identifiant,
      'dateNaissance': instance.dateNaissance,
      'nomArabe': instance.nomArabe,
      'nomLatin': instance.nomLatin,
      'prenomArabe': instance.prenomArabe,
      'prenomLatin': instance.prenomLatin,
      'lieuNaissance': instance.lieuNaissance,
      'lieuNaissanceArabe': instance.lieuNaissanceArabe,
      'photo': instance.photo,
      'email': instance.email,
    };
