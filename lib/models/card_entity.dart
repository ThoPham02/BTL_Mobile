import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_entity.g.dart';

@collection
@JsonSerializable()
class CardEntity {
  @JsonKey()
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final int? userID;
  final String? name;
  final int? numTask;
  final int? timeDay;

  CardEntity({this.userID, this.name, this.numTask, this.timeDay});

  factory CardEntity.fromJson(Map<String, dynamic> data) =>
      _$CardEntityFromJson(data);

  Map<String, dynamic> toJson() => _$CardEntityToJson(this);
}
