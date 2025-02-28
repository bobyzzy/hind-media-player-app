import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);
  
  @override
  List<Object?> get props => [message];
}

/// [ServerFailure] class for 502 error from server
class ServerFailure extends Failure {
  ServerFailure() : super("Server error. Please try again later.");
}

/// [CacheFailure] class for cache error
class CacheFailure extends Failure {
  CacheFailure() : super("Cache error. Failed to retrieve data.");
}

/// [NotFoundFailure] class for 404 error from server
class NotFoundFailure extends Failure {
  NotFoundFailure() : super("Resource not found. Please check the URL.");
}

/// [OTPFailure] class for 400 error from server
class OTPFailure extends Failure {
  OTPFailure() : super("Invalid OTP. Please try again.");
}

/// [AuthFailure] class for 401 error from server
class AuthFailure extends Failure {
  AuthFailure() : super("Authentication failed. Please log in again.");
}

/// [ForbiddenFailure] class for 403 error from server
class ForbiddenFailure extends Failure {
  ForbiddenFailure() : super("Access denied. You don’t have permission.");
}

/// [RefreshTokenFailure] class for 403 error from server
class RefreshTokenFailure extends Failure {
  RefreshTokenFailure() : super("Failed to refresh token. Please log in again.");
}

/// [ConnectionFailure] for connection failure
class ConnectionFailure extends Failure {
  ConnectionFailure() : super("No internet connection. Please check your network.");
}

/// [CanceledFailure] when the request is canceled
class CanceledFailure extends Failure {
  CanceledFailure() : super("Request was canceled. Please try again.");
}

/// [UnknownFailure] for initial status
class UnknownFailure extends Failure {
  UnknownFailure() : super("An unknown error occurred. Please try again.");
}

/// [PickImageFailure] for image picking failure
class PickImageFailure extends Failure {
  PickImageFailure() : super("Failed to pick an image. Please try again.");
}

/// [UnimplementedFailure] for unimplemented errors
class UnimplementedFailure extends Failure {
  UnimplementedFailure() : super("This feature is not yet implemented.");
}

/// [UnexpectedResponseFailure] for errors handling response
class UnexpectedResponseFailure extends Failure {
  UnexpectedResponseFailure() : super("Unexpected server response. Please try again later.");
}

/// [InitFailure] For initial state
class InitFailure extends Failure {
  InitFailure() : super("Initialization failed. Please restart the app.");
}
