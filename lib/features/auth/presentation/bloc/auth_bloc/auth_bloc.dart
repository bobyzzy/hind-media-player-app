// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
// import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/config/token_config.dart';
import '../../../../../core/errors/failure.dart';
// import '../../../../../core/services/ticker_service.dart';
import '../../../../../core/utils/enums.dart';
import '../../../../../service_locator.dart';
import '../../../domain/entities/otp_confirm_request_entity.dart';
import '../../../domain/usecases/otp_confirm_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final OtpConfirmUsecase otpUsecase;
  AuthBloc(
    this.otpUsecase,
    // this._ticker,
  ) : super(
            // AuthState(duration: _duration)
            AuthState()) {
    on<_LogInEvent>(logIn);
    on<_LogOutEvent>(logOut);
    on<_CheckAuthEvent>(checkAuth);
    // on<_StartTimerEvent>(startTimer);
    // on<_ResetTimerEvent>(resetTimer);
    // on<_DisposeTimerEvent>(disposeTimer);
  }

  // final TickerService _ticker;
  // static const int _duration = 10;
  final token = sl<TokenConfig>();

  // StreamSubscription<int>? _tickerSubscription;

  // void startTimer(_StartTimerEvent event, Emitter<AuthState> emit) {
  //   emit(state.copyWith(timerStatus: TimerStatus.START));
  //   _tickerSubscription?.cancel();
  //   _tickerSubscription = _ticker.tick(ticks: _duration).listen((durationTime) {
  //     log(durationTime.toString());
  //     emit(
  //       state.copyWith(
  //           duration: durationTime,
  //           timerStatus:
  //               durationTime == 0 ? TimerStatus.END : TimerStatus.TICKED),
  //     );
  //   });
  // }

  // void resetTimer(_ResetTimerEvent event, Emitter<AuthState> emit) {
  //   emit(state.copyWith(timerStatus: TimerStatus.START));
  //   _tickerSubscription?.cancel();
  //   _tickerSubscription = _ticker.tick(ticks: _duration).listen((durationTime) {
  //     log(durationTime.toString());
  //     emit(
  //       state.copyWith(
  //           duration: durationTime,
  //           status: Status.initial,
  //           timerStatus:
  //               durationTime == 0 ? TimerStatus.END : TimerStatus.TICKED),
  //     );
  //   });
  // }

  // void disposeTimer(_DisposeTimerEvent event, Emitter<AuthState> emit) {
  //   _tickerSubscription?.cancel();
  //   emit(state.copyWith(duration: _duration));
  // }

  Future<void> logIn(_LogInEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final failOrConfirm = await otpUsecase.call(
      OtpRequestParams(
        request: OtpConfirmRequestEntity(
          otpCode: int.parse(event.otp),
          phoneNumber: int.parse(event.phoneNumber
              .replaceAll(' ', '')), //TODO: ADD INFO ABOUT PHONE NUMBER
        ),
      ),
    );

    failOrConfirm.fold((error) {
      emit(
        state.copyWith(
          failure: error,
          authStatus: AuthStatus.UNAUTHORIZED,
          status: Status.error,
          // timerStatus:
          //     state.duration == 0 ? TimerStatus.END : TimerStatus.PAUSED,
        ),
      );
      event.onError(error);
    }, (data) {
      emit(state.copyWith(
        authStatus: AuthStatus.AUTHORIZED,
        status: Status.loaded,
      ));
      event.onSuccess(true);
    });
  }

  void logOut(_LogOutEvent event, Emitter<AuthState> emit) {
    token.clear();
    emit(state.copyWith(authStatus: AuthStatus.UNAUTHORIZED));
  }

  void checkAuth(_CheckAuthEvent event, Emitter<AuthState> emit) {
    if (token.getToken().isNotEmpty || token.getToken() != '') {
      emit(state.copyWith(authStatus: AuthStatus.AUTHORIZED));
    } else {
      emit(state.copyWith(authStatus: AuthStatus.UNAUTHORIZED));
    }
  }
}
