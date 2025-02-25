part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.INITIAL) AuthStatus authStatus,
    @Default(Status.initial) Status status,
    @Default(UknownFailue()) Failure failure,
    // @Default(TimerStatus.INITIAL) TimerStatus timerStatus,
    // required int duration,
  }) = _AuthState;
}
