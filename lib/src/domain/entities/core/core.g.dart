// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicUser _$$_BasicUserFromJson(Map<String, dynamic> json) => _$_BasicUser(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      trainer: json['trainer'] as bool,
    );

Map<String, dynamic> _$$_BasicUserToJson(_$_BasicUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'trainer': instance.trainer,
    };
