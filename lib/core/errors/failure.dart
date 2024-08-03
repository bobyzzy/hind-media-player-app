import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
  @override
  List<Object?> get props => [];
}

///[ServerFailure] class for 502 error from server
class ServerFailure extends Failure {}

///[Cache failure] class for cache error
class CacheFailure extends Failure {}

///[NotFoundFailue] class for 404 error from server
class NotFoundFailue extends Failure {}


///[OTPFailure] class for 400 error from server
class OTPFailure extends Failure {}

///[AuthFailure] class for 401 error from server
class AuthFailure extends Failure {}

///[ForbiddenFailue] class for 403 error from server
class ForbiddenFailue extends Failure {}

///[RefreshTokenFailue] class for 403 error from server
class RefreshTokenFailue extends Failure {}

///[UknownFailue] for initial status
class UknownFailue extends Failure {
  const UknownFailue();
}

///[PickImageFailure] for initial status
class PickImageFailure extends Failure {
  const PickImageFailure();
}
