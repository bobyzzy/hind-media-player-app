import 'package:connectivity_plus/connectivity_plus.dart';

///[ConnectivityService] работает на основе [Connectivity] сервис класс для работы  доступности к интернету
class ConnectivityService {
  static ConnectivityService? _instance;
  final Connectivity _connectivity = Connectivity();

  ConnectivityService._iternal();

  static get instance {
    _instance ??= ConnectivityService._iternal();
    return _instance;
  }

  ///проверяет подключения к интернету возвращает такие значения : [true] ==> если есть подключения, [false] ==> если ее нету
  Future<bool> _checkConnection() async {
    final connectivityResult = await _connectivity.checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.none)) return false;

    return true;
  }

  Future<bool> get checkConnection async => await _checkConnection();
}
