// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentDTO _$CommentDTOFromJson(Map<String, dynamic> json) => CommentDTO(
      userId: json['userId'] as int,
      id: json['id'] as int,
      text: json['text'] as String,
      postId: json['postId'] as int,
    );

Map<String, dynamic> _$CommentDTOToJson(CommentDTO instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'text': instance.text,
      'postId': instance.postId,
    };
