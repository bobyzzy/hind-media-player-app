part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(Status.initial) Status status,
    Failure? failure,
    @Default([]) List<FavoritePlaybackDataEntity> favorites,
    @Default([]) List<SubscriptionResponseEntity> subcription,
    @Default([]) List<UserGetMeEntity> userData,
    File? file,
  }) = _ProfileState;
}
