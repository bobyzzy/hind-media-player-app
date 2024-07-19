// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_confirm_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpConfirmResponseModelImpl _$$OtpConfirmResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpConfirmResponseModelImpl(
      hasAccount: json['has_account'] as bool,
      access: json['access'] as String,
      refresh: json['refresh'] as String,
    );

Map<String, dynamic> _$$OtpConfirmResponseModelImplToJson(
        _$OtpConfirmResponseModelImpl instance) =>
    <String, dynamic>{
      'has_account': instance.hasAccount,
      'access': instance.access,
      'refresh': instance.refresh,
    };
