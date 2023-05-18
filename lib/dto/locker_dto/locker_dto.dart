import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/typedef.dart';

part 'locker_dto.g.dart';

@JsonSerializable()
class LockerDTO {
  const LockerDTO({
    required this.id,
    required this.code,
    required this.title,
    required this.isLocked,
  });

  final int id;
  final String code;
  final String title;

  @JsonKey(name: 'is_lock')
  final bool isLocked;

  factory LockerDTO.fromJson(JsonMap json) => _$LockerDTOFromJson(json);

  JsonMap toJson() => _$LockerDTOToJson(this);
}
