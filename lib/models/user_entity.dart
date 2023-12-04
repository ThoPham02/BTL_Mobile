import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@collection
@JsonSerializable()
class UserEntity {
  @JsonKey()
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  final String? name;
  final String? email;
  final String? password;

  UserEntity({this.name, this.email, this.password});

  factory UserEntity.fromJson(Map<String, dynamic> data) =>
      _$UserEntityFromJson(data);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
