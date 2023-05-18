import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/typedef.dart';

part 'post_dto.g.dart';

@JsonSerializable()
class PostDTO {
  const PostDTO({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
  });

  final int id;
  final int userId;
  final String title;
  final String description;

  factory PostDTO.fromJson(JsonMap json) => _$PostDTOFromJson(json);

  JsonMap toJson() => _$PostDTOToJson(this);
}
