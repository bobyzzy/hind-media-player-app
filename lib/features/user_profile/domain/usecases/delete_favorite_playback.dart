// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_delete_request_entity.dart';
import 'package:hind_app/features/user_profile/domain/repositories/profile_repository.dart';

class DeleteFavoritePlaybackUsecase extends Usecase<bool, DeleteParams> {
  final IProfileRepository repository;

  DeleteFavoritePlaybackUsecase({required this.repository});
  @override
  Future<Either<Failure, bool>> call(DeleteParams params) async {
    return await repository.deleteFavoritePlayback(params.request);
  }
}

class DeleteParams {
  final UserFavoritesDeleteRequestEntity request;
  DeleteParams({required this.request});
}
