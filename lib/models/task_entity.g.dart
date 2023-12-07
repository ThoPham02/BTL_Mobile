// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskEntity _$TaskEntityFromJson(Map<String, dynamic> json) => TaskEntity(
      taskID: json['taskID'] as String?,
      name: json['name'] as String?,
      cardName: json['cardName'] as String?,
      status: json['status'] as int?,
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
      'cardName': instance.cardName,
      'status': instance.status,
      'timeStart': instance.timeStart,
      'timeEnd': instance.timeEnd,
      'description': instance.description,
      'documents': instance.documents,
    };
