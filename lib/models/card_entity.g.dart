// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) => CardEntity(
      cardID: json['cardID'] as int?,
      name: json['name'] as String?,
      numTask: json['numTask'] as int?,
      timeDay: json['timeDay'] as int?,
    );

Map<String, dynamic> _$CardEntityToJson(CardEntity instance) =>
    <String, dynamic>{
      'cardID': instance.cardID,
      'name': instance.name,
      'numTask': instance.numTask,
      'timeDay': instance.timeDay,
    };
