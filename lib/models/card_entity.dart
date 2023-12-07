import 'package:json_annotation/json_annotation.dart';

part 'card_entity.g.dart';

@JsonSerializable()
class CardEntity {
  @JsonKey()
  final String? cardID;
  final String? name;
  final String? iconPath;
  final String? bgPath;
  final int? numTask;
  final int? timeDay;

  CardEntity(
      {this.cardID,
      this.name,
      this.iconPath,
      this.bgPath,
      this.numTask,
      this.timeDay});

  factory CardEntity.fromJson(Map<String, dynamic> data) =>
      _$CardEntityFromJson(data);

  Map<String, dynamic> toJson() => _$CardEntityToJson(this);

  static List<CardEntity> getCardEntity() {
    List<CardEntity> cards = [];

    cards.add(CardEntity(
      cardID: "1",
      name: "Mobile App Design",
      iconPath: "assets/vectors/smartphone.svg",
      bgPath: "assets/vectors/card_background1.svg",
      numTask: 2,
      timeDay: 100,
    ));

    cards.add(CardEntity(
      cardID: "2",
      name: "Meeting With Team",
      iconPath: "assets/vectors/monitor.svg",
      bgPath: "assets/vectors/card_background2.svg",
      numTask: 1,
      timeDay: 100,
    ));

    cards.add(CardEntity(
      cardID: "3",
      name: "Mobile App Design",
      iconPath: "assets/vectors/smartphone.svg",
      bgPath: "assets/vectors/card_background1.svg",
      numTask: 2,
      timeDay: 100,
    ));

    return cards;
  }
}
