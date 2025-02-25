part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn({
    required String phoneNumber,
    required final String otp,
    required ValueChanged<bool> onSuccess,
    required ValueChanged<Failure> onError,
  }) = _LogInEvent;

  const factory AuthEvent.logOut() = _LogOutEvent;
  const factory AuthEvent.checkAuth() = _CheckAuthEvent;
  // const factory AuthEvent.startTimer() = _StartTimerEvent;
  // const factory AuthEvent.resetTimer() = _ResetTimerEvent;
  // const factory AuthEvent.disposeTimer() = _DisposeTimerEvent;
}
