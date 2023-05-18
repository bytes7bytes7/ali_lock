// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LockerDTO _$LockerDTOFromJson(Map<String, dynamic> json) => LockerDTO(
      id: json['id'] as int,
      code: json['code'] as String,
      title: json['title'] as String,
      isLocked: json['is_lock'] as bool,
    );

Map<String, dynamic> _$LockerDTOToJson(LockerDTO instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'is_lock': instance.isLocked,
    };
