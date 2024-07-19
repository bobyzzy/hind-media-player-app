// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confirm_request_entity.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confrim_response_entity.dart';
import 'package:hind_app/features/auth/domain/repositories/auth_repository.dart';

class OtpConfirmUsecase extends Usecase<OtpConfirmResponseEntity, OtpRequestParams> {
  final IAuthRepository repository;

  OtpConfirmUsecase({required this.repository});
  @override
  Future<Either<Failure, OtpConfirmResponseEntity>> call(OtpRequestParams params) async {
    return await repository.otpConfirm(params.request);
  }
}

class OtpRequestParams {
  final OtpConfirmRequestEntity request;
  OtpRequestParams({required this.request});
}
