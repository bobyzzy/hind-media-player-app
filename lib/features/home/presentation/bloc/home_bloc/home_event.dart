part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = _HomeInitEvent;
  const factory HomeEvent.connectionChanged(InternetConnectionStatus status) = _ConnectionChangedEvent;
}
