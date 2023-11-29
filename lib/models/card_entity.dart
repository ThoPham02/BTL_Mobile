import 'package:isar/isar.dart';

part 'card_entity.g.dart';

@collection
class CardEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final int? userID;
  final String? name;
  final int? numTask;
  final int? timeDay;

  CardEntity({this.userID, this.name, this.numTask, this.timeDay});
}
