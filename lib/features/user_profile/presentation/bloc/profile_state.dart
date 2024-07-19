part of'profile_bloc.dart';


@freezed
class ProfileState with _$ProfileState{
  const factory ProfileState({
    @Default(Status.initial) Status status,
     File? file,
  }) =_ProfileState;
}