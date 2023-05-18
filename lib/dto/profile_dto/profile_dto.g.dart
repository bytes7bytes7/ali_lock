// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDTO _$ProfileDTOFromJson(Map<String, dynamic> json) => ProfileDTO(
      username: json['username'] as String,
      name: json['name'] as String,
      id: json['id'] as int,
      phone: json['phone'] as String,
      email: json['email'] as String,
      website: json['website'] as String,
      address: json['adress'] as String,
    );

Map<String, dynamic> _$ProfileDTOToJson(ProfileDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'id': instance.id,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'adress': instance.address,
    };
