import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/typedef.dart';

part 'comment_dto.g.dart';

@JsonSerializable()
class CommentDTO {
  const CommentDTO({
    required this.userId,
    required this.id,
    required this.text,
    required this.postId,
  });

  final int userId;
  final int id;
  final String text;
  final int postId;

  factory CommentDTO.fromJson(JsonMap json) => _$CommentDTOFromJson(json);

  JsonMap toJson() => _$CommentDTOToJson(this);
}
