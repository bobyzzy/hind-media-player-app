import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

class LoggerModule {
  static LoggerModule? _instance;
  late Talker? _talker;
  LoggerModule._internal() {
    _talker = TalkerFlutter.init();
  }

  static get instance {
    _instance ??= LoggerModule._internal();
    return _instance;
  }

  Talker get talker => _talker ?? TalkerFlutter.init();

  Interceptor get dioLogger => TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          enabled: true,
          printErrorData: true,
          printErrorHeaders: true,
          printErrorMessage: true,
          printRequestData: true,
          printRequestHeaders: true,
          printResponseData: true,
          printResponseHeaders: true,
          printResponseMessage: true,
        ),
      );

  BlocObserver get blocObserver => TalkerBlocObserver(talker: talker);
  TalkerRouteObserver get goRouterObserver => TalkerRouteObserver(talker);
}
