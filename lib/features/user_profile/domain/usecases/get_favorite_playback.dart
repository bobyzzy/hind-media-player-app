// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_banners.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_get_response.dart';
import 'package:hind_app/features/user_profile/domain/repositories/profile_repository.dart';

class GetFavoritePlaybackUsecase extends Usecase<List<UserFavoritesGetResponseEntity>, NoParams> {
  final IProfileRepository repository;

  GetFavoritePlaybackUsecase({required this.repository});
  @override
  Future<Either<Failure, List<UserFavoritesGetResponseEntity>>> call(NoParams params) async {
    return await repository.getFavoritePlayback();
  }
}
