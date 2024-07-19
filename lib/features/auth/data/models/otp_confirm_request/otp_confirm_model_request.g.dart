// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_confirm_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpConfirmRequestModelImpl _$$OtpConfirmRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpConfirmRequestModelImpl(
      phoneNumber: (json['phone_number'] as num).toInt(),
      otp: (json['otp'] as num).toInt(),
    );

Map<String, dynamic> _$$OtpConfirmRequestModelImplToJson(
        _$OtpConfirmRequestModelImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'otp': instance.otp,
    };
