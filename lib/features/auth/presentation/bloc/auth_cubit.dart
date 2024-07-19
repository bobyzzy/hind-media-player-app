// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/config/token_config.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/services/ticker_service.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/auth/domain/entities/otp_confirm_request_entity.dart';
import 'package:hind_app/features/auth/domain/usecases/otp_confirm_usecase.dart';
import 'package:hind_app/service_locator.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final OtpConfirmUsecase otpUsecase;
  AuthCubit(
    this.otpUsecase,
    this._ticker,
  ) : super(AuthState(duration: _duration));

  final TickerService _ticker;
  static const int _duration = 180;
  final token = sl<TokenConfig>();

  StreamSubscription<int>? _tickerSubscription;

  void startTimer() {
    emit(state.copyWith(timerStatus: TimerStatus.START));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: _duration).listen((durationTime) {
      log(durationTime.toString());
      emit(
        state.copyWith(
            duration: durationTime,
            timerStatus: durationTime == 0 ? TimerStatus.END : TimerStatus.TICKED),
      );
    });
  }

  void resetTimer() {
    emit(state.copyWith(timerStatus: TimerStatus.START));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: _duration).listen((durationTime) {
      log(durationTime.toString());
      emit(
        state.copyWith(
            duration: durationTime,
            timerStatus: durationTime == 0 ? TimerStatus.END : TimerStatus.TICKED),
      );
    });
  }

  void checkAuth() {
    if (token.getToken().isNotEmpty || token.getToken() != '') {
      emit(state.copyWith(authStatus: AuthStatus.AUTHORIZED));
    } else {
      emit(state.copyWith(authStatus: AuthStatus.UNAUTHORIZED));
    }
  }

  void logOut() {
    token.clear();
    emit(state.copyWith(authStatus: AuthStatus.UNAUTHORIZED));
  }

  Future<void> logIn(String phoneNumber, final String otp) async {
    emit(state.copyWith(status: Status.loading));

    final failOrConfirm = await otpUsecase.call(OtpRequestParams(
        request: OtpConfirmRequestEntity(
            otpCode: int.parse(otp), phoneNumber: 334412499))); //TODO: ADD INFO ABOUT PHONE NUMBER

    failOrConfirm.fold(
      (error) => emit(state.copyWith(
          failure: error, authStatus: AuthStatus.UNAUTHORIZED, status: Status.error)),
      (data) => emit(state.copyWith(authStatus: AuthStatus.AUTHORIZED, status: Status.loaded)),
    );

    emit(state.copyWith(authStatus: AuthStatus.AUTHORIZED));
  }

  void disposeTimer() {
    _tickerSubscription?.cancel();
    emit(state.copyWith(duration: _duration));
  }
}
