// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskEntityCollection on Isar {
  IsarCollection<TaskEntity> get taskEntitys => this.collection();
}

const TaskEntitySchema = CollectionSchema(
  name: r'TaskEntity',
  id: -2911998186285533288,
  properties: {
    r'cardID': PropertySchema(
      id: 0,
      name: r'cardID',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'documents': PropertySchema(
      id: 2,
      name: r'documents',
      type: IsarType.stringList,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'timeEnd': PropertySchema(
      id: 4,
      name: r'timeEnd',
      type: IsarType.long,
    ),
    r'timeStart': PropertySchema(
      id: 5,
      name: r'timeStart',
      type: IsarType.long,
    )
  },
  estimateSize: _taskEntityEstimateSize,
  serialize: _taskEntitySerialize,
  deserialize: _taskEntityDeserialize,
  deserializeProp: _taskEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _taskEntityGetId,
  getLinks: _taskEntityGetLinks,
  attach: _taskEntityAttach,
  version: '3.1.0+1',
);

int _taskEntityEstimateSize(
  TaskEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.documents;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _taskEntitySerialize(
  TaskEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cardID);
  writer.writeString(offsets[1], object.description);
  writer.writeStringList(offsets[2], object.documents);
  writer.writeString(offsets[3], object.name);
  writer.writeLong(offsets[4], object.timeEnd);
  writer.writeLong(offsets[5], object.timeStart);
}

TaskEntity _taskEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskEntity(
    cardID: reader.readLongOrNull(offsets[0]),
    description: reader.readStringOrNull(offsets[1]),
    documents: reader.readStringList(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
    timeEnd: reader.readLongOrNull(offsets[4]),
    timeStart: reader.readLongOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _taskEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskEntityGetId(TaskEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _taskEntityGetLinks(TaskEntity object) {
  return [];
}

void _taskEntityAttach(IsarCollection<dynamic> col, Id id, TaskEntity object) {
  object.id = id;
}

extension TaskEntityQueryWhereSort
    on QueryBuilder<TaskEntity, TaskEntity, QWhere> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhere> anyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'name'),
      );
    });
  }
}

extension TaskEntityQueryWhere
    on QueryBuilder<TaskEntity, TaskEntity, QWhereClause> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [null],
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameEqualTo(
      String? name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameNotEqualTo(
      String? name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameGreaterThan(
    String? name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [name],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameLessThan(
    String? name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [],
        upper: [name],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameBetween(
    String? lowerName,
    String? upperName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [lowerName],
        includeLower: includeLower,
        upper: [upperName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameStartsWith(
      String NamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [NamePrefix],
        upper: ['$NamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [''],
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterWhereClause> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ));
      }
    });
  }
}

extension TaskEntityQueryFilter
    on QueryBuilder<TaskEntity, TaskEntity, QFilterCondition> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> cardIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cardID',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      cardIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cardID',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> cardIDEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardID',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> cardIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardID',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> cardIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardID',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> cardIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'documents',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'documents',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'documents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'documents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'documents',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'documents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'documents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'documents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'documents',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documents',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'documents',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documents',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documents',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documents',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documents',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documents',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      documentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'documents',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameContains(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> timeEndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeEnd',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeEndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeEnd',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> timeEndEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeEndGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> timeEndLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> timeEndBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeStart',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeStart',
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> timeStartEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeStart',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition>
      timeStartGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeStart',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> timeStartLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeStart',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterFilterCondition> timeStartBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskEntityQueryObject
    on QueryBuilder<TaskEntity, TaskEntity, QFilterCondition> {}

extension TaskEntityQueryLinks
    on QueryBuilder<TaskEntity, TaskEntity, QFilterCondition> {}

extension TaskEntityQuerySortBy
    on QueryBuilder<TaskEntity, TaskEntity, QSortBy> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByCardID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardID', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByCardIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardID', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByTimeEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> sortByTimeStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.desc);
    });
  }
}

extension TaskEntityQuerySortThenBy
    on QueryBuilder<TaskEntity, TaskEntity, QSortThenBy> {
  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByCardID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardID', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByCardIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardID', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByTimeEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.desc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.asc);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QAfterSortBy> thenByTimeStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.desc);
    });
  }
}

extension TaskEntityQueryWhereDistinct
    on QueryBuilder<TaskEntity, TaskEntity, QDistinct> {
  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByCardID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardID');
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByDocuments() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documents');
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeEnd');
    });
  }

  QueryBuilder<TaskEntity, TaskEntity, QDistinct> distinctByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeStart');
    });
  }
}

extension TaskEntityQueryProperty
    on QueryBuilder<TaskEntity, TaskEntity, QQueryProperty> {
  QueryBuilder<TaskEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaskEntity, int?, QQueryOperations> cardIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardID');
    });
  }

  QueryBuilder<TaskEntity, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<TaskEntity, List<String>?, QQueryOperations>
      documentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documents');
    });
  }

  QueryBuilder<TaskEntity, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TaskEntity, int?, QQueryOperations> timeEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeEnd');
    });
  }

  QueryBuilder<TaskEntity, int?, QQueryOperations> timeStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeStart');
    });
  }
}
