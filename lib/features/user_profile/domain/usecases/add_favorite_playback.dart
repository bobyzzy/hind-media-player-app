// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_request.dart';
import 'package:hind_app/features/user_profile/domain/repositories/profile_repository.dart';

class AddFavoritePlaybackUsecae extends Usecase<bool, AddFavoritesParams> {
  final IProfileRepository repository;
  AddFavoritePlaybackUsecae({required this.repository});
  @override
  Future<Either<Failure, bool>> call(AddFavoritesParams params) async {
    return await repository.addFavoritePlayback(params);
  }
}

class AddFavoritesParams {
  final UserFavoritesRequestEntity requestEntity;

  AddFavoritesParams({required this.requestEntity});
}
