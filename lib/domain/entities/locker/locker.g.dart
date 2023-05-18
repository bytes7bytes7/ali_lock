// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Locker _$$_LockerFromJson(Map<String, dynamic> json) => _$_Locker(
      id: json['id'] as int,
      code: json['code'] as String,
      title: json['title'] as String,
      isLocked: json['is_lock'] as bool,
    );

Map<String, dynamic> _$$_LockerToJson(_$_Locker instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'is_lock': instance.isLocked,
    };
