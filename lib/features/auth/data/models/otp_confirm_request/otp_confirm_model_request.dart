// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_confirm_model_request.g.dart';
part 'otp_confirm_model_request.freezed.dart';

@freezed
class OtpConfirmRequestModel with _$OtpConfirmRequestModel {
  const factory OtpConfirmRequestModel({
    @JsonKey(name: 'phone_number') required int phoneNumber,
    required int otp,
  }) = _OtpConfirmRequestModel;

  factory OtpConfirmRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OtpConfirmRequestModelFromJson(json);
}
