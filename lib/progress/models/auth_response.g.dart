// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAuthResponseCollection on Isar {
  IsarCollection<AuthResponse> get authResponses => this.collection();
}

const AuthResponseSchema = CollectionSchema(
  name: r'AuthResponse',
  id: 4331291191647821508,
  properties: {
    r'bacId': PropertySchema(
      id: 0,
      name: r'bacId',
      type: IsarType.long,
    ),
    r'bacYear': PropertySchema(
      id: 1,
      name: r'bacYear',
      type: IsarType.long,
    ),
    r'etablissementId': PropertySchema(
      id: 2,
      name: r'etablissementId',
      type: IsarType.long,
    ),
    r'expirationDate': PropertySchema(
      id: 3,
      name: r'expirationDate',
      type: IsarType.dateTime,
    ),
    r'idIndividu': PropertySchema(
      id: 4,
      name: r'idIndividu',
      type: IsarType.long,
    ),
    r'token': PropertySchema(
      id: 5,
      name: r'token',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 6,
      name: r'userId',
      type: IsarType.long,
    ),
    r'userName': PropertySchema(
      id: 7,
      name: r'userName',
      type: IsarType.string,
    )
  },
  estimateSize: _authResponseEstimateSize,
  serialize: _authResponseSerialize,
  deserialize: _authResponseDeserialize,
  deserializeProp: _authResponseDeserializeProp,
  idName: r'id_',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _authResponseGetId,
  getLinks: _authResponseGetLinks,
  attach: _authResponseAttach,
  version: '3.1.0+1',
);

int _authResponseEstimateSize(
  AuthResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.token.length * 3;
  bytesCount += 3 + object.userName.length * 3;
  return bytesCount;
}

void _authResponseSerialize(
  AuthResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bacId);
  writer.writeLong(offsets[1], object.bacYear);
  writer.writeLong(offsets[2], object.etablissementId);
  writer.writeDateTime(offsets[3], object.expirationDate);
  writer.writeLong(offsets[4], object.idIndividu);
  writer.writeString(offsets[5], object.token);
  writer.writeLong(offsets[6], object.userId);
  writer.writeString(offsets[7], object.userName);
}

AuthResponse _authResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AuthResponse(
    etablissementId: reader.readLong(offsets[2]),
    expirationDate: reader.readDateTime(offsets[3]),
    idIndividu: reader.readLong(offsets[4]),
    token: reader.readString(offsets[5]),
    userId: reader.readLong(offsets[6]),
    userName: reader.readString(offsets[7]),
  );
  return object;
}

P _authResponseDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _authResponseGetId(AuthResponse object) {
  return object.id_;
}

List<IsarLinkBase<dynamic>> _authResponseGetLinks(AuthResponse object) {
  return [];
}

void _authResponseAttach(
    IsarCollection<dynamic> col, Id id, AuthResponse object) {}

extension AuthResponseQueryWhereSort
    on QueryBuilder<AuthResponse, AuthResponse, QWhere> {
  QueryBuilder<AuthResponse, AuthResponse, QAfterWhere> anyId_() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AuthResponseQueryWhere
    on QueryBuilder<AuthResponse, AuthResponse, QWhereClause> {
  QueryBuilder<AuthResponse, AuthResponse, QAfterWhereClause> id_EqualTo(
      Id id_) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id_,
        upper: id_,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterWhereClause> id_NotEqualTo(
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

  QueryBuilder<AuthResponse, AuthResponse, QAfterWhereClause> id_GreaterThan(
      Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id_, includeLower: include),
      );
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterWhereClause> id_LessThan(
      Id id_,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id_, includeUpper: include),
      );
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterWhereClause> id_Between(
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

extension AuthResponseQueryFilter
    on QueryBuilder<AuthResponse, AuthResponse, QFilterCondition> {
  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> bacIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bacId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      bacIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bacId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> bacIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bacId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> bacIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bacId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      bacYearEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bacYear',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      bacYearGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bacYear',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      bacYearLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bacYear',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      bacYearBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bacYear',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      etablissementIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etablissementId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      etablissementIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'etablissementId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      etablissementIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'etablissementId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      etablissementIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'etablissementId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      expirationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      expirationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      expirationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      expirationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expirationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      idIndividuEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idIndividu',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      idIndividuGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idIndividu',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      idIndividuLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idIndividu',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      idIndividuBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idIndividu',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> id_EqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id_',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
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

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> id_LessThan(
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

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> id_Between(
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

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> tokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      tokenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> tokenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> tokenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'token',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> tokenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> tokenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'token',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> userIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterFilterCondition>
      userNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userName',
        value: '',
      ));
    });
  }
}

extension AuthResponseQueryObject
    on QueryBuilder<AuthResponse, AuthResponse, QFilterCondition> {}

extension AuthResponseQueryLinks
    on QueryBuilder<AuthResponse, AuthResponse, QFilterCondition> {}

extension AuthResponseQuerySortBy
    on QueryBuilder<AuthResponse, AuthResponse, QSortBy> {
  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByBacId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacId', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByBacIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacId', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByBacYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacYear', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByBacYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacYear', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      sortByEtablissementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etablissementId', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      sortByEtablissementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etablissementId', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      sortByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      sortByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByIdIndividu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIndividu', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      sortByIdIndividuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIndividu', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> sortByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }
}

extension AuthResponseQuerySortThenBy
    on QueryBuilder<AuthResponse, AuthResponse, QSortThenBy> {
  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByBacId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacId', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByBacIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacId', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByBacYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacYear', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByBacYearDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bacYear', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      thenByEtablissementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etablissementId', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      thenByEtablissementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etablissementId', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      thenByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      thenByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByIdIndividu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIndividu', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy>
      thenByIdIndividuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIndividu', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenById_() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenById_Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id_', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QAfterSortBy> thenByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }
}

extension AuthResponseQueryWhereDistinct
    on QueryBuilder<AuthResponse, AuthResponse, QDistinct> {
  QueryBuilder<AuthResponse, AuthResponse, QDistinct> distinctByBacId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bacId');
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QDistinct> distinctByBacYear() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bacYear');
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QDistinct>
      distinctByEtablissementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etablissementId');
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QDistinct>
      distinctByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expirationDate');
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QDistinct> distinctByIdIndividu() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idIndividu');
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QDistinct> distinctByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'token', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }

  QueryBuilder<AuthResponse, AuthResponse, QDistinct> distinctByUserName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
    });
  }
}

extension AuthResponseQueryProperty
    on QueryBuilder<AuthResponse, AuthResponse, QQueryProperty> {
  QueryBuilder<AuthResponse, int, QQueryOperations> id_Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id_');
    });
  }

  QueryBuilder<AuthResponse, int, QQueryOperations> bacIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bacId');
    });
  }

  QueryBuilder<AuthResponse, int, QQueryOperations> bacYearProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bacYear');
    });
  }

  QueryBuilder<AuthResponse, int, QQueryOperations> etablissementIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etablissementId');
    });
  }

  QueryBuilder<AuthResponse, DateTime, QQueryOperations>
      expirationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expirationDate');
    });
  }

  QueryBuilder<AuthResponse, int, QQueryOperations> idIndividuProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idIndividu');
    });
  }

  QueryBuilder<AuthResponse, String, QQueryOperations> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'token');
    });
  }

  QueryBuilder<AuthResponse, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<AuthResponse, String, QQueryOperations> userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      expirationDate:
          const DateTimeSerializer().fromJson(json['expirationDate'] as String),
      token: json['token'] as String,
      userId: json['userId'] as int,
      idIndividu: json['idIndividu'] as int,
      etablissementId: json['etablissementId'] as int,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'expirationDate':
          const DateTimeSerializer().toJson(instance.expirationDate),
      'token': instance.token,
      'userId': instance.userId,
      'idIndividu': instance.idIndividu,
      'etablissementId': instance.etablissementId,
      'userName': instance.userName,
    };
