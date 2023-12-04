import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity {
  @JsonKey()
  final int? userID;
  final String? name;
  final String? email;
  final String? password;

  UserEntity({this.userID, this.name, this.email, this.password});

  factory UserEntity.fromJson(Map<String, dynamic> data) =>
      _$UserEntityFromJson(data);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
