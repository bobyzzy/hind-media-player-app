part of 'playback_bloc.dart';

@freezed
class PlaybackEvent with _$PlaybackEvent {
  const factory PlaybackEvent.call({
    required String id,
    required String type,
  }) = _PlaybackCallEvent;
}
