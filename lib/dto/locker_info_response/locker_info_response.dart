import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/typedef.dart';
import '../comment_dto/comment_dto.dart';
import '../locker_dto/locker_dto.dart';
import '../post_dto/post_dto.dart';
import '../profile_dto/profile_dto.dart';

part 'locker_info_response.g.dart';

@JsonSerializable()
class LockerInfoResponse {
  const LockerInfoResponse({
    required this.profiles,
    required this.posts,
    required this.comments,
    required this.lockers,
  });

  @JsonKey(name: 'profile')
  final List<ProfileDTO> profiles;
  final List<PostDTO> posts;
  final List<CommentDTO> comments;
  final List<LockerDTO> lockers;

  factory LockerInfoResponse.fromJson(JsonMap json) =>
      _$LockerInfoResponseFromJson(json);

  JsonMap toJson() => _$LockerInfoResponseToJson(this);
}
