// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/user_profile/data/models/user_favorites_get/user_favorites_get_response.dart';
import 'package:hind_app/features/user_profile/data/models/user_favorites_request/user_favorites_request.dart';
import 'package:hind_app/features/user_profile/data/models/user_subscription/user_subscription_response_model.dart';

abstract interface class IProfileRemoteDataSource {
  Future<bool> addUserFavorite(UserFavoritesRequestModel request);
  Future<List<UserFavoritesGetResponseModel>> getUserFavorites();
  Future<List<UserSubscriptionResponseModel>> getSubscription();
}

class ProfileRemoteDataSource implements IProfileRemoteDataSource {
  final Dio client;

  ProfileRemoteDataSource({required this.client});

  @override
  Future<bool> addUserFavorite(UserFavoritesRequestModel request) async {
    try {
      final response = await client.post('user/userfavorites/', data: request.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      }
    } on DioException catch (e) {
      log(e.response?.data.toString() ?? '');
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
      if (e.response?.statusCode == 400) {
        throw OTPExeption();
      }
      rethrow;
    }

    throw UnimplementedError();
  }

  @override
  Future<List<UserFavoritesGetResponseModel>> getUserFavorites() async {
    try {
      final response = await client.get('user/userfavorites/');
      final data = response.data;
      log(data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return (data as List).map((e) => UserFavoritesGetResponseModel.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      log(e.response?.data.toString() ?? '');
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
      if (e.response?.statusCode == 400) {
        throw OTPExeption();
      }
      rethrow;
    }
    throw UnimplementedError();
  }

  @override
  Future<List<UserSubscriptionResponseModel>> getSubscription() async {
    try {
      final response = await client.get('subscriptions/tariffs/');
      final data = response.data;
      return (data as List).map((e) => UserSubscriptionResponseModel.fromJson(e)).toList();
    } on DioException catch (e) {
      log(e.response?.data.toString() ?? '');
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
      if (e.response?.statusCode == 400) {
        throw OTPExeption();
      }
      rethrow;
    }
  }
}
