import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/typedef.dart';

part 'profile_dto.g.dart';

@JsonSerializable()
class ProfileDTO {
  const ProfileDTO({
    required this.username,
    required this.name,
    required this.id,
    required this.phone,
    required this.email,
    required this.website,
    required this.address,
  });

  final String username;
  final String name;
  final int id;
  final String phone;
  final String email;
  final String website;

  @JsonKey(name: 'adress')
  final String address;

  factory ProfileDTO.fromJson(JsonMap json) => _$ProfileDTOFromJson(json);

  JsonMap toJson() => _$ProfileDTOToJson(this);
}
