// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/services/ticker_service.dart';
import '../../../../../core/utils/enums.dart';

part 'ticker_cubit.freezed.dart';
part 'ticker_state.dart';

class TickerCubit extends Cubit<TickerState> {
  TickerCubit(this._ticker) : super(TickerState(duration: _duration));

  final TickerService _ticker;
  static const int _duration = 10;

  StreamSubscription<int>? _tickerSubscription;

  void startTimer() {
    emit(state.copyWith(timerStatus: TimerStatus.START));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: _duration).listen((durationTime) {
      log(durationTime.toString());
      emit(
        state.copyWith(
            duration: durationTime,
            timerStatus:
                durationTime == 0 ? TimerStatus.END : TimerStatus.TICKED),
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
            timerStatus:
                durationTime == 0 ? TimerStatus.END : TimerStatus.TICKED),
      );
    });
  }

  void disposeTimer() {
    _tickerSubscription?.cancel();
    emit(state.copyWith(duration: _duration));
  }

  void onErrorLoginTimeStatus() {
    emit(
      state.copyWith(
        timerStatus: state.duration == 0 ? TimerStatus.END : TimerStatus.PAUSED,
      ),
    );
  }
}
