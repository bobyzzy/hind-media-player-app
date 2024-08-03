import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/services/image_picker_service.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_banners.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_get_response.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_request.dart';
import 'package:hind_app/features/user_profile/domain/entities/subscription_get_response_entity.dart';
import 'package:hind_app/features/user_profile/domain/usecases/add_favorite_playback.dart';
import 'package:hind_app/features/user_profile/domain/usecases/get_favorite_playback.dart';
import 'package:hind_app/features/user_profile/domain/usecases/get_user_subscription.dart';
import 'package:hind_app/service_locator.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AddFavoritePlaybackUsecae addFavorite;
  final GetFavoritePlaybackUsecase getFavorite;
  final GetUserSubscription userSubscription;
  ProfileCubit(this.addFavorite, this.getFavorite, this.userSubscription) : super(ProfileState());

  Future<void> pickImage(ImageSource source) async {
    final imagePickerService = sl<ImagePickerService>();
    final file = await imagePickerService.pickImage(source);

    if (file.path != '') {
      emit(state.copyWith(file: file));
    }
  }

  Future<void> getFavorites() async {
    final List<FavoritePlaybackDataEntity> dataFavorites = [];
    emit(state.copyWith(status: Status.loading));

    final dataOrFailure = await getFavorite.call(NoParams());
    dataOrFailure.fold((error) => emit(state.copyWith(status: Status.error)), (data) {
      dataFavorites.addAll(data.first.movies);
      dataFavorites.addAll(data.first.series);
      dataFavorites.addAll(data.first.tvShou);
      dataFavorites.addAll(data.first.soundtrack);

      emit(state.copyWith(favorites: dataFavorites, status: Status.loaded));
    });
  }

  Future<void> addFavoritePlayback(String category, int id) async {
    final dataOrFailure = await addFavorite.call(favroiteRequest(category, id));

    dataOrFailure.fold((error) => emit(state.copyWith(status: Status.error, failure: error)),
        (data) => emit(state.copyWith(status: Status.loaded)));
  }

  Future<void> getSubscription() async {
    emit(state.copyWith(status: Status.loading));
    final dataOrFailure = await userSubscription.call(NoParams());

    dataOrFailure.fold((error) => emit(state.copyWith(status: Status.error, failure: error)),
        (data) => emit(state.copyWith(subcription: data, status: Status.loaded)));
  }
}

AddFavoritesParams favroiteRequest(String category, int id) => AddFavoritesParams(
    requestEntity: UserFavoritesRequestEntity(fileCategory: category, fileId: id));
