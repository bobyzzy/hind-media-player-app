// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_me_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGetMeModelImpl _$$UserGetMeModelImplFromJson(Map<String, dynamic> json) =>
    _$UserGetMeModelImpl(
      phoneNumber: json['phone_number'] as String,
      gender: json['gender'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$UserGetMeModelImplToJson(
        _$UserGetMeModelImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'avatar': instance.avatar,
    };
