import 'package:json_annotation/json_annotation.dart';

part 'task_entity.g.dart';

@JsonSerializable()
class TaskEntity {
  @JsonKey()
  final int? taskID;
  final String? name;
  final int? cardID;
  final int? timeStart;
  final int? timeEnd;
  final String? description;
  final List<String>? documents;

  TaskEntity({
    this.taskID,
    this.name,
    this.cardID,
    this.timeStart,
    this.timeEnd,
    this.description,
    this.documents,
  });

  factory TaskEntity.fromJson(Map<String, dynamic> data) =>
      _$TaskEntityFromJson(data);

  Map<String, dynamic> toJson() => _$TaskEntityToJson(this);
}
