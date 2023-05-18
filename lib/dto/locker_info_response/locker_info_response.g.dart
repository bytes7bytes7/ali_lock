// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LockerInfoResponse _$LockerInfoResponseFromJson(Map<String, dynamic> json) =>
    LockerInfoResponse(
      profiles: (json['profile'] as List<dynamic>)
          .map((e) => ProfileDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      lockers: (json['lockers'] as List<dynamic>)
          .map((e) => LockerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LockerInfoResponseToJson(LockerInfoResponse instance) =>
    <String, dynamic>{
      'profile': instance.profiles,
      'posts': instance.posts,
      'comments': instance.comments,
      'lockers': instance.lockers,
    };
