part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.INITIAL) AuthStatus authStatus,
    @Default(Status.initial) Status status,
    @Default(TimerStatus.INITIAL) TimerStatus timerStatus,
    @Default(UknownFailue()) Failure failure,
    required int duration,
  }) = _AuthState;
}
