import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/image_picker_service.dart';
import '../../../../core/utils/enums.dart';
import '../../../../service_locator.dart';
import '../../../home/domain/usecases/get_all_banners.dart';
import '../../domain/entities/subscription_get_response_entity.dart';
import '../../domain/entities/user_favorites_delete_request_entity.dart';
import '../../domain/entities/user_favorites_get_response.dart';
import '../../domain/entities/user_favorites_request.dart';
import '../../domain/entities/user_get_me_entity.dart';
import '../../domain/usecases/add_favorite_playback.dart';
import '../../domain/usecases/delete_favorite_playback.dart';
import '../../domain/usecases/get_favorite_playback.dart';
import '../../domain/usecases/get_user_me.dart';
import '../../domain/usecases/get_user_subscription.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AddFavoritePlaybackUsecae addFavorite;
  final GetFavoritePlaybackUsecase getFavorite;
  final GetUserSubscription userSubscription;
  final DeleteFavoritePlaybackUsecase deleteFavoritePlaybackUsecase;
  final GetUserMeUsecase getUserUsecase;
  ProfileBloc(
    this.addFavorite,
    this.getFavorite,
    this.userSubscription,
    this.deleteFavoritePlaybackUsecase,
    this.getUserUsecase,
  ) : super(ProfileState()) {
    on<_PickImageProfileEvent>(pickImage);
    on<_GetFavoritesProfileEvent>(getFavorites);
    on<_AddFavoritePlaybackProfileEvent>(addFavoritePlayback);
    on<_GetSubscriptionProfileEvent>(getSubscription);
    on<_DeleteFavoritePlaybackProfileEvent>(deleteFavoritePlayback);
    on<_GetMeProfileEvent>(getMe);
  }

  Future<void> pickImage(_PickImageProfileEvent event, Emitter emit) async {
    final imagePickerService = sl<ImagePickerService>();
    final file = await imagePickerService.pickImage(event.source);

    if (file.path != '') {
      emit(state.copyWith(file: file));
    }
  }

  Future<void> getFavorites(
      _GetFavoritesProfileEvent event, Emitter emit) async {
    final List<FavoritePlaybackDataEntity> dataFavorites = [];
    emit(state.copyWith(status: Status.loading));

    final dataOrFailure = await getFavorite.call(NoParams());
    dataOrFailure.fold((error) => emit(state.copyWith(status: Status.error)),
        (data) {
      dataFavorites.addAll(data.first.movies);
      dataFavorites.addAll(data.first.series);
      dataFavorites.addAll(data.first.tvShou);
      dataFavorites.addAll(data.first.soundtrack);

      emit(state.copyWith(favorites: dataFavorites, status: Status.loaded));
    });
  }

  Future<void> addFavoritePlayback(
      _AddFavoritePlaybackProfileEvent event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));
    final dataOrFailure =
        await addFavorite.call(favroiteRequest(event.category, event.id));

    dataOrFailure.fold(
        (error) => emit(state.copyWith(status: Status.error, failure: error)),
        (data) => emit(state.copyWith(status: Status.loaded)));
  }

  Future<void> getSubscription(
      _GetSubscriptionProfileEvent event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));
    final dataOrFailure = await userSubscription.call(NoParams());

    dataOrFailure.fold(
        (error) => emit(state.copyWith(status: Status.error, failure: error)),
        (data) =>
            emit(state.copyWith(subcription: data, status: Status.loaded)));
  }

  Future<void> deleteFavoritePlayback(
      _DeleteFavoritePlaybackProfileEvent event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));

    final failOrData = await deleteFavoritePlaybackUsecase.call(DeleteParams(
        request: UserFavoritesDeleteRequestEntity(
            fileCategory: event.category, fileId: event.id)));

    failOrData.fold(
        (error) => emit(state.copyWith(failure: error, status: Status.error)),
        (data) => emit(state.copyWith(status: Status.loaded)));

    add(ProfileEvent.getFavorites());
  }

  Future<void> getMe(_GetMeProfileEvent event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));

    final failOrData = await getUserUsecase.call(NoParams());

    failOrData.fold(
        (error) => emit(state.copyWith(failure: error, status: Status.error)),
        (data) => emit(state.copyWith(status: Status.loaded, userData: data)));
  }
}

AddFavoritesParams favroiteRequest(String category, int id) =>
    AddFavoritesParams(
        requestEntity:
            UserFavoritesRequestEntity(fileCategory: category, fileId: id));
