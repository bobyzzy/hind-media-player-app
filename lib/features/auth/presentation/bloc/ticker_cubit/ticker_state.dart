part of 'ticker_cubit.dart';

@freezed
class TickerState with _$TickerState {
  const factory TickerState({
    @Default(TimerStatus.INITIAL) TimerStatus timerStatus,
    required int duration,
  }) = _TickerState;
}
