import 'package:isar/isar.dart';

part 'task_entity.g.dart';

@collection
class TaskEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String? name;
  final int? cardID;
  final int? timeStart;
  final int? timeEnd;
  final String? description;
  final List<String>? documents;

  TaskEntity({
    this.name,
    this.cardID,
    this.timeStart,
    this.timeEnd,
    this.description,
    this.documents,
  });
}
