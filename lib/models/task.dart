import 'package:isar/isar.dart';

class TaskEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String? name;
  final int? timeStart;
  final int? timeEnd;

  TaskEntity({this.name, this.timeStart, this.timeEnd});
}
