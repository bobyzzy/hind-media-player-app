// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hind_app/core/constants/constants.dart';
import 'package:hind_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

///[TokenConfig] class thant manage token configuration.
///Its needs on module Dio InterceptorsWrapper.
class TokenConfig {
  SharedPreferences preferences;
  TokenConfig(this.preferences) {
    logger.talker.info('Token shared preferences Initted:${preferences.runtimeType}');
  }

  ///[getToken] function to get token from local storage
  String getToken() {
    final String _token = preferences.getString(Constants.TOKEN) ?? "";
    return _token;
  }

  ///[setToken] function to set token from response of request
  Future<void> setToken(String token) async => await preferences.setString(Constants.TOKEN, token);

  ///[clear] function to clear clear all data from shared preferences
  Future<void> clear() async => await preferences.clear();

  ///[getRefreshToken] get refresh token from local storage
  String getRefreshToken() => preferences.getString(Constants.REFRESH_TOKEN) ?? '';

  ///[setRefreshToken] set refresh token from local storage
  Future<void> setRefreshToken(String refreshToken) async =>
      await preferences.setString(Constants.REFRESH_TOKEN, refreshToken);
}
