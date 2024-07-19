// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confrim_response_entity.dart';

part 'otp_confirm_model_response.freezed.dart';
part 'otp_confirm_model_response.g.dart';

@freezed
class OtpConfirmResponseModel with _$OtpConfirmResponseModel {
  const factory OtpConfirmResponseModel({
    @JsonKey(name: 'has_account') required bool hasAccount,
    required String access,
    required String refresh,
  }) = _OtpConfirmResponseModel;

  factory OtpConfirmResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpConfirmResponseModelFromJson(json);
}

class OtpMapper {
  static OtpConfirmResponseEntity mapper(OtpConfirmResponseModel model) => OtpConfirmResponseEntity(
        hasAccount: model.hasAccount,
        accessToken: model.access,
        refreshToken: model.refresh,
      );
}
