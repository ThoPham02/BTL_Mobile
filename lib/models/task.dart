import 'package:isar/isar.dart';

class TaskEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String? name;
  final int? numTask;

  TaskEntity({this.name, this.numTask});
}
