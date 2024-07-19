// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hind_app/features/auth/data/models/otp_confirm_request/otp_confirm_model_request.dart';

class OtpConfirmRequestEntity extends Equatable {
  final int phoneNumber;
  final int otpCode;

  OtpConfirmRequestEntity({required this.phoneNumber, required this.otpCode});

  @override
  List<Object> get props => [phoneNumber, otpCode];

  OtpConfirmRequestModel toModel() => OtpConfirmRequestModel(
        phoneNumber: phoneNumber,
        otp: otpCode,
      );
  // AuthRequestModel toModel() {
  //   return AuthRequestModel(
  //     firstName: firstName,
  //     phone: phone,
  //     fcmToken: fcmToken,
  //   );
  // }
}
