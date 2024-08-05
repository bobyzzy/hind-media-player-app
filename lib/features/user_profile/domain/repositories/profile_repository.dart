import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_delete_request_entity.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_get_response.dart';
import 'package:hind_app/features/user_profile/domain/entities/subscription_get_response_entity.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_get_me_entity.dart';
import 'package:hind_app/features/user_profile/domain/usecases/add_favorite_playback.dart';

abstract interface class IProfileRepository {
  Future<Either<Failure, bool>> addFavoritePlayback(AddFavoritesParams params);
  Future<Either<Failure, List<UserFavoritesGetResponseEntity>>> getFavoritePlayback();
  Future<Either<Failure, List<SubscriptionResponseEntity>>> getSubscription();
  Future<Either<Failure, bool>> deleteFavoritePlayback(UserFavoritesDeleteRequestEntity params);
  Future<Either<Failure, List<UserGetMeEntity>>> getMe();
}
