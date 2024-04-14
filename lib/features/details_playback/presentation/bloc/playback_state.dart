import 'package:hind_app/features/details_playback/domain/entities/playback_details_entity.dart';

sealed class PlaybackState {}

class PlaybackInitial extends PlaybackState {}

class PlaybackLoading extends PlaybackState {}

class PlaybackLoaded extends PlaybackState {
  final PlaybackDetailsEntity data;

  PlaybackLoaded(this.data);
}

class PlaybackError extends PlaybackState {}

class PlaybackConnectionError extends PlaybackState {}
