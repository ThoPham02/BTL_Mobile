// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskEntity _$TaskEntityFromJson(Map<String, dynamic> json) => TaskEntity(
      taskID: json['taskID'] as int?,
      name: json['name'] as String?,
      cardID: json['cardID'] as int?,
      timeStart: json['timeStart'] as int?,
      timeEnd: json['timeEnd'] as int?,
      description: json['description'] as String?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TaskEntityToJson(TaskEntity instance) =>
    <String, dynamic>{
      'taskID': instance.taskID,
      'name': instance.name,
      'cardID': instance.cardID,
      'timeStart': instance.timeStart,
      'timeEnd': instance.timeEnd,
      'description': instance.description,
      'documents': instance.documents,
    };
