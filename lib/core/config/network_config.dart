// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hind_app/core/config/token_config.dart';
import 'package:hind_app/core/constants/constants.dart';
import 'package:hind_app/main.dart';


///[NetworkConfig] class configuration of [Dio].
///It containst base url and base options of api.
///with custom [InterceptorsWrapper]
class NetworkConfig {
  Dio _instance = Dio(BaseOptions(
    baseUrl: Constants.BASE_URL,
    connectTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 30),
  ));

  Dio get client => _instance;
  final TokenConfig tokenConfig;

  NetworkConfig(this.tokenConfig) {
    logger.i('Network client initted with base url:${_instance.options.baseUrl}');

    _instance.interceptors.addAll(
      [
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            final _token = tokenConfig.getToken();
            final _refresh = tokenConfig.getRefreshToken();
            log("ACCSESS TOKEN: $_token");
            log("REFRESH TOKEN $_refresh");

            if (_token != "") {
              options.headers['Authorization'] = "Bearer $_token";

              logger.i('Auth:${options.headers}');
            }
            logger.i("REQUEST: ${options.data}");
            return handler.next(options);
          },
          onResponse: (response, handler) {
            logger.d('Status code:${response.statusCode}, Response:$response');

            return handler.next(response);
          },
          onError: (error, handler) async {
            logger.e('Status code : ${error.response?.statusCode}, Error: ${error.message}');
            final _refresh = tokenConfig.getRefreshToken();

            if (error.response?.statusCode == 403) {
              if (_refresh.isNotEmpty) {
                await _refreshToken();

                return handler.resolve(await _retry(error.requestOptions));
              }
            }
            return handler.next(error);
          },
        ),
        // ErrorInterceptor(_instance),
      ],
    );
  }

  Dio? initHttpClient() {
    return _instance;
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(method: requestOptions.method, headers: requestOptions.headers);

    return _instance.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  Future<void> _refreshToken() async {
    final _refresh = tokenConfig.getRefreshToken();

    try {
      final response = await _instance.post('v2/users/token/refresh/', data: {'refresh': _refresh});

      if (response.statusCode == 200 || response.statusCode == 201) {
        await tokenConfig.setToken(response.data['access']); //accsess token
        await tokenConfig.setRefreshToken(response.data['refresh']); //refresh token
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        tokenConfig.clear();
        rethrow;
      }
    }
  }
}

///[ErrorInterceptor] custom Interceptor of [Dio]
///[ErrorInterceptor] handles error response and sent to [Logger]
class ErrorInterceptor extends Interceptor {
  final Dio _dio;
  ErrorInterceptor(this._dio);

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    if (error.type == DioExceptionType.connectionTimeout) {
      final options = error.requestOptions;
      logger.e('Error: $error, Status code: ${error.response?.statusCode}');
      _dio.request(options.path); 
    }

    super.onError(error, handler);
  }
}



