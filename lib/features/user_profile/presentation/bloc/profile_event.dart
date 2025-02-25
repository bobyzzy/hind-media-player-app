part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.pickImage({
    required ImageSource source,
  }) = _PickImageProfileEvent;

  const factory ProfileEvent.deleteFavoritePlayback({
    required String category,
    required int id,
  }) = _DeleteFavoritePlaybackProfileEvent;

  const factory ProfileEvent.addFavoritePlayback({
    required String category,
    required int id,
  }) = _AddFavoritePlaybackProfileEvent;

  const factory ProfileEvent.getFavorites() = _GetFavoritesProfileEvent;
  const factory ProfileEvent.getSubscription() = _GetSubscriptionProfileEvent;
  const factory ProfileEvent.getMe() = _GetMeProfileEvent;
}
