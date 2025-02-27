// import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:hind_app/core/config/token_config.dart';
import 'package:hind_app/core/constants/constants.dart';
import 'package:hind_app/main.dart';

import '../../service_locator.dart';
import '../services/connectivity_service.dart';
///[NetworkConfig] модуль конфигурации  для пакета [Dio].
/// Модуль для обработки http запросов
/// имеет в себе такие интерсепторы как:
///[TalkerDioLogger] ---> для логирования приходящих и исходящих данных
///[RetryInterceptor] ---> для повторных запросов повторяет запрос если была какая то проблема с подключением к серверу
///[ConnectivityInterceptor] ----> для отслеживания статуса подключения к сети

class NetworkConfig {
  final ConnectivityService connectivityService;

  final Dio _instance = Dio(BaseOptions(
    baseUrl: Constants.BASE_URL,
    connectTimeout: const Duration(seconds: 1),
    receiveTimeout: const Duration(seconds: 2),
  ));

  Dio get dio => _instance;

  NetworkConfig(this.connectivityService) {
    // _instance.options.baseUrl = 'https://httpbin.org/delay/5';
    _instance.interceptors.addAll(
      [
        ConnectivityInterceptor(connectivityService),
        RetryInterceptor(
          dio: _instance,
          logPrint: (message) => logger.talker.error(message),
          retries: 3,
          retryDelays: const [
            Duration(seconds: 1),
            Duration(seconds: 2),
            Duration(seconds: 3),
          ],
        ),
        TokenInterceptor(),
        if (kDebugMode || kProfileMode) logger.dioLogger,
      ],
    );
  }
}

class ConnectivityInterceptor extends Interceptor {
  final ConnectivityService connectivityService;

  ConnectivityInterceptor(this.connectivityService);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final connectionResult = await connectivityService.checkConnection;
    if (!connectionResult) {
      handler.reject(DioException.connectionError(
          requestOptions: options, reason: 'нет подключения к интернету'));
      return;
    }

    super.onRequest(options, handler);
  }
}

///Для работы с сессионным ключем ключ генерируется с сервера при регистрации сохраняет в локальное
///хранилище и если токен присуствует следующие запросы будут отправлятся с сессионным ключем
class TokenInterceptor extends Interceptor {
  final tokenConfig = sl<TokenConfig>();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await tokenConfig.getToken();
    if (kDebugMode || kProfileMode) logger.talker.debug('TOKEN: $token');

    if (token != 'null') {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        await _refreshToken();

        final retryRequest = await _retry(err.requestOptions);
        handler.resolve(retryRequest);
        return;
      } catch (e) {
        tokenConfig.clear();
        handler.reject(err);
        return;
      }
    }

    super.onError(err, handler);
  }

  Future<void> _refreshToken() async {
    final refresh = tokenConfig.getRefreshToken();

    try {
      final response = await sl<Dio>().post(
        'v2/users/token/refresh/',
        data: {'refresh': refresh},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        await tokenConfig.setToken(response.data['access']);
        await tokenConfig.setRefreshToken(response.data['refresh']);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        tokenConfig.clear();
        rethrow;
      }
    }
  }

  Future<Response> _retry(RequestOptions requestOptions) async {
    final dio = sl<Dio>();

    // Yangi token olish
    final token = await sl<TokenConfig>().getToken();
    requestOptions.headers['Authorization'] = 'Bearer $token';

    // So‘rovni qayta yuborish
    return dio.fetch(requestOptions);
  }
}
