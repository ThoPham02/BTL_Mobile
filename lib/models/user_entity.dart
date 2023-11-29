import 'package:isar/isar.dart';

part 'user_entity.g.dart';

@collection
class CardEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String? name;
  final String? email;
  final String? password;

  CardEntity({this.name, this.email, this.password});
}
