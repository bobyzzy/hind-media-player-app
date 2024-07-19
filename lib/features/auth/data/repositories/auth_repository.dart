// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/auth/data/models/otp_confirm_response/otp_confirm_model_response.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confirm_request_entity.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confrim_response_entity.dart';
import 'package:hind_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final InternetConnectionChecker checker;
  final IAuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({
    required this.checker,
    required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, OtpConfirmResponseEntity>> otpConfirm(OtpConfirmRequestEntity request) =>
      _otpConfirm(() => remoteDataSource.otpConfirm(request.toModel()));

  Future<Either<Failure, OtpConfirmResponseEntity>> _otpConfirm(
      Future<OtpConfirmResponseModel> Function() otpConfirm) async {
    if (await checker.hasConnection) {
      try {
        final remoteAllGenres = await otpConfirm();
        final parsedData = OtpMapper.mapper(remoteAllGenres);

        return Right(parsedData);
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      return Left(CacheFailure());
    }
  }
}
