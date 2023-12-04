import 'package:json_annotation/json_annotation.dart';

part 'card_entity.g.dart';

@JsonSerializable()
class CardEntity {
  @JsonKey()
  final int? cardID;
  final String? name;
  final int? numTask;
  final int? timeDay;

  CardEntity({this.cardID, this.name, this.numTask, this.timeDay});

  factory CardEntity.fromJson(Map<String, dynamic> data) =>
      _$CardEntityFromJson(data);

  Map<String, dynamic> toJson() => _$CardEntityToJson(this);
}
