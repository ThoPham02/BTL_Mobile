// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardEntityCollection on Isar {
  IsarCollection<CardEntity> get cardEntitys => this.collection();
}

const CardEntitySchema = CollectionSchema(
  name: r'CardEntity',
  id: 8921433643831792852,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'numTask': PropertySchema(
      id: 1,
      name: r'numTask',
      type: IsarType.long,
    ),
    r'timeDay': PropertySchema(
      id: 2,
      name: r'timeDay',
      type: IsarType.long,
    ),
    r'userID': PropertySchema(
      id: 3,
      name: r'userID',
      type: IsarType.long,
    )
  },
  estimateSize: _cardEntityEstimateSize,
  serialize: _cardEntitySerialize,
  deserialize: _cardEntityDeserialize,
  deserializeProp: _cardEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'userID': IndexSchema(
      id: 5409443695161892061,
      name: r'userID',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'userID',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _cardEntityGetId,
  getLinks: _cardEntityGetLinks,
  attach: _cardEntityAttach,
  version: '3.1.0+1',
);

int _cardEntityEstimateSize(
  CardEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cardEntitySerialize(
  CardEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLong(offsets[1], object.numTask);
  writer.writeLong(offsets[2], object.timeDay);
  writer.writeLong(offsets[3], object.userID);
}

CardEntity _cardEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardEntity(
    name: reader.readStringOrNull(offsets[0]),
    numTask: reader.readLongOrNull(offsets[1]),
    timeDay: reader.readLongOrNull(offsets[2]),
    userID: reader.readLongOrNull(offsets[3]),
  );
  object.id = id;
  return object;
}

P _cardEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cardEntityGetId(CardEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardEntityGetLinks(CardEntity object) {
  return [];
}

void _cardEntityAttach(IsarCollection<dynamic> col, Id id, CardEntity object) {
  object.id = id;
}

extension CardEntityQueryWhereSort
    on QueryBuilder<CardEntity, CardEntity, QWhere> {
  QueryBuilder<CardEntity, CardEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhere> anyUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'userID'),
      );
    });
  }
}

extension CardEntityQueryWhere
    on QueryBuilder<CardEntity, CardEntity, QWhereClause> {
  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> userIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userID',
        value: [null],
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> userIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'userID',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> userIDEqualTo(
      int? userID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userID',
        value: [userID],
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> userIDNotEqualTo(
      int? userID) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userID',
              lower: [],
              upper: [userID],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userID',
              lower: [userID],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userID',
              lower: [userID],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userID',
              lower: [],
              upper: [userID],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> userIDGreaterThan(
    int? userID, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'userID',
        lower: [userID],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> userIDLessThan(
    int? userID, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'userID',
        lower: [],
        upper: [userID],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterWhereClause> userIDBetween(
    int? lowerUserID,
    int? upperUserID, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'userID',
        lower: [lowerUserID],
        includeLower: includeLower,
        upper: [upperUserID],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CardEntityQueryFilter
    on QueryBuilder<CardEntity, CardEntity, QFilterCondition> {
  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> numTaskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numTask',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      numTaskIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numTask',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> numTaskEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numTask',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      numTaskGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numTask',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> numTaskLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numTask',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> numTaskBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numTask',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> timeDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeDay',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      timeDayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeDay',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> timeDayEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeDay',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      timeDayGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeDay',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> timeDayLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeDay',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> timeDayBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> userIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userID',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition>
      userIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userID',
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> userIDEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userID',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> userIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userID',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> userIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userID',
        value: value,
      ));
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterFilterCondition> userIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CardEntityQueryObject
    on QueryBuilder<CardEntity, CardEntity, QFilterCondition> {}

extension CardEntityQueryLinks
    on QueryBuilder<CardEntity, CardEntity, QFilterCondition> {}

extension CardEntityQuerySortBy
    on QueryBuilder<CardEntity, CardEntity, QSortBy> {
  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByNumTask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numTask', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByNumTaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numTask', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByTimeDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeDay', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByTimeDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeDay', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> sortByUserIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.desc);
    });
  }
}

extension CardEntityQuerySortThenBy
    on QueryBuilder<CardEntity, CardEntity, QSortThenBy> {
  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByNumTask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numTask', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByNumTaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numTask', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByTimeDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeDay', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByTimeDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeDay', Sort.desc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.asc);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QAfterSortBy> thenByUserIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userID', Sort.desc);
    });
  }
}

extension CardEntityQueryWhereDistinct
    on QueryBuilder<CardEntity, CardEntity, QDistinct> {
  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByNumTask() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numTask');
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByTimeDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeDay');
    });
  }

  QueryBuilder<CardEntity, CardEntity, QDistinct> distinctByUserID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userID');
    });
  }
}

extension CardEntityQueryProperty
    on QueryBuilder<CardEntity, CardEntity, QQueryProperty> {
  QueryBuilder<CardEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CardEntity, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CardEntity, int?, QQueryOperations> numTaskProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numTask');
    });
  }

  QueryBuilder<CardEntity, int?, QQueryOperations> timeDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeDay');
    });
  }

  QueryBuilder<CardEntity, int?, QQueryOperations> userIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userID');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) => CardEntity(
      userID: json['userID'] as int?,
      name: json['name'] as String?,
      numTask: json['numTask'] as int?,
      timeDay: json['timeDay'] as int?,
    )..id = json['id'] as int;

Map<String, dynamic> _$CardEntityToJson(CardEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'name': instance.name,
      'numTask': instance.numTask,
      'timeDay': instance.timeDay,
    };
