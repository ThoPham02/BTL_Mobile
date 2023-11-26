import 'package:isar/isar.dart';

class CardEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String? name;
  final int? numTask;

  CardEntity({this.name, this.numTask});
}
