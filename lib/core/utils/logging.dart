import 'package:logger/logger.dart';
import 'package:logger/web.dart';

class Logging {
  final _instance = Logger(
    filter: null,
    output: null,
    printer: PrettyPrinter(
      colors: true,
      lineLength: 100,
      methodCount: 5,
      errorMethodCount: 5,
      printEmojis: true,
      printTime: true,
    ),
  );

  Logger get logger => _instance;
}
