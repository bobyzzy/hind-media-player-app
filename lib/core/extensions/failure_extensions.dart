import 'package:dio/dio.dart';
import '../errors/exceptions.dart';
import '../errors/failure.dart';

extension ExceptionToFailureExtension on Exception {
  Failure toFailure() {
    final error = this as DioException;
    switch (error.error) {
      case ConnectionException():
        return ConnectionFailure();
      case AuthException():
        return AuthFailure();
      case NotFoundException():
        return NotFoundFailure();
      case OTPException():
        return OTPFailure();
      case RefreshTokenException():
        return RefreshTokenFailure();
      case ServerException():
        return ServerFailure();
      case CanceledException():
        return CacheFailure();
      case UnknownException():
      default:
        return UnknownFailure();
    }
  }
}
