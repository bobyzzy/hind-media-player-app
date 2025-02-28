// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hind_app/core/config/token_config.dart';
import 'package:hind_app/features/auth/data/models/otp_confirm_request/otp_confirm_model_request.dart';
import 'package:hind_app/features/auth/data/models/otp_confirm_response/otp_confirm_model_response.dart';
import 'package:hind_app/service_locator.dart';

import '../../../../core/errors/exceptions.dart';

abstract class IAuthRemoteDataSource {
  Future<OtpConfirmResponseModel> otpConfirm(OtpConfirmRequestModel request);
}

class AuthRemoteDataSourceImpl implements IAuthRemoteDataSource {
  final Dio client;
  AuthRemoteDataSourceImpl({required this.client});
  @override
  Future<OtpConfirmResponseModel> otpConfirm(
      OtpConfirmRequestModel request) async {
    log(client.options.baseUrl);

    try {
      final response =
          await client.post('user/auth_user/', data: request.toJson());
      if (response.statusCode == 200) {
        var data = response.data;
        final tokenData = OtpConfirmResponseModel.fromJson(data);
        final tokenStorage = sl<TokenConfig>();
        tokenStorage.setToken(tokenData.access);
        tokenStorage.setRefreshToken(tokenData.refresh);

        return tokenData;
      }
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedResponseException();
    }
    throw UnimplementedError();
  }
}
