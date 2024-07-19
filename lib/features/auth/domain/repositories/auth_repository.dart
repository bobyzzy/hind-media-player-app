import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confirm_request_entity.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confrim_response_entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, OtpConfirmResponseEntity>> otpConfirm(OtpConfirmRequestEntity request);
}
