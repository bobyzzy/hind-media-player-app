part of "playback_bloc.dart";

@freezed
class PlaybackState with _$PlaybackState {
  factory PlaybackState({
    @Default(Status.initial) Status status,
    @Default('') String errorMessage,
    Failure? error,
    
    PlaybackDetailsResponseEntity? data,
  }) = _PlaybackState;
}

// sealed class PlaybackState {}

// class PlaybackInitial extends PlaybackState {}

// class PlaybackLoading extends PlaybackState {}

// class PlaybackLoaded extends PlaybackState {
//   final PlaybackDetailsResponseEntity data;

//   PlaybackLoaded(this.data);
// }

// class PlaybackError extends PlaybackState {}

// class PlaybackConnectionError extends PlaybackState {}
