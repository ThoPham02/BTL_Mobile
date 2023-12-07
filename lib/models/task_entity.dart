import 'package:json_annotation/json_annotation.dart';

part 'task_entity.g.dart';

@JsonSerializable()
class TaskEntity {
  @JsonKey()
  final String? taskID;
  final String? name;
  final String? cardName;
  final int? status;
  final int? timeStart;
  final int? timeEnd;
  final String? description;
  final List<String>? documents;

  TaskEntity({
    this.taskID,
    this.name,
    this.cardName,
    this.status,
    this.timeStart,
    this.timeEnd,
    this.description,
    this.documents,
  });

  factory TaskEntity.fromJson(Map<String, dynamic> data) =>
      _$TaskEntityFromJson(data);

  Map<String, dynamic> toJson() => _$TaskEntityToJson(this);
}
