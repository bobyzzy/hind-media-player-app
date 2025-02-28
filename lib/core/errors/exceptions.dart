///[ServerException] for 502 exeption from Server
class ServerException implements Exception {}

///[CacheException] for cache exeption server
class CacheException implements Exception {}

///[NotFoundException] for 404 exeption server
class NotFoundException implements Exception {}

///[OTPException] for 400 exeption from server
class OTPException implements Exception {}

///[AuthException] for 401 exeption from server
class AuthException implements Exception {}

///[RefreshTokenException] for 403 exeption from server
class RefreshTokenException implements Exception {}

///[PickImageException] for image exeption
class PickImageException implements Exception {}

///[CanceledException] when the request is canceled
class CanceledException implements Exception {}

///[UnknownException] for unknown exception
class UnknownException implements Exception {}

///[ConnectionException] for connection exception
class ConnectionException implements Exception {}

///[] for 403 exeption from server
class UnimplementedException implements Exception {}

///[UnexpectedResponseException] for exeption handling reponse 
class UnexpectedResponseException implements Exception {}
