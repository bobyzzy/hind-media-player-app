// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/user_profile/data/models/user_favorites_get/user_favorites_get_response.dart';
import 'package:hind_app/features/user_profile/data/models/user_get_me/user_get_me_model.dart';
import 'package:hind_app/features/user_profile/data/models/user_subscription/user_subscription_response_model.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_delete_request_entity.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_get_response.dart';
import 'package:hind_app/features/user_profile/domain/entities/subscription_get_response_entity.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_get_me_entity.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/user_profile/data/datasources/remote_datasource/profile_remote_datasource.dart';
import 'package:hind_app/features/user_profile/domain/repositories/profile_repository.dart';
import 'package:hind_app/features/user_profile/domain/usecases/add_favorite_playback.dart';

class ProfileRepositoryImpl implements IProfileRepository {
  final InternetConnectionChecker networkInfo;
  final IProfileRemoteDataSource remoteDataSource;

  ProfileRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, bool>> addFavoritePlayback(AddFavoritesParams params) async {
    if (await networkInfo.hasConnection) {
      try {
        final data = await remoteDataSource.addUserFavorite(params.requestEntity.toModel());

        return Right(data);
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<UserFavoritesGetResponseEntity>>> getFavoritePlayback() async {
    return await _getFavoritePlayback(() => remoteDataSource.getUserFavorites());
  }

  Future<Either<Failure, List<UserFavoritesGetResponseEntity>>> _getFavoritePlayback(
      Future<List<UserFavoritesGetResponseModel>> Function() getFavoritePlayback) async {
    if (await networkInfo.hasConnection) {
      try {
        final data = await getFavoritePlayback();

        return Right(data.map((e) => UserFavoritesGetMapper.mapper(e)).toList());
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<SubscriptionResponseEntity>>> getSubscription() async {
    return await _getSubscription(() => remoteDataSource.getSubscription());
  }

  Future<Either<Failure, List<SubscriptionResponseEntity>>> _getSubscription(
      Future<List<UserSubscriptionResponseModel>> Function() getSubscription) async {
    if (await networkInfo.hasConnection) {
      try {
        final data = await getSubscription();
        return Right(data.map((e) => UserSubscriptionMapper.mapper(e)).toList());
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> deleteFavoritePlayback(
      UserFavoritesDeleteRequestEntity params) async {
    return await _deleteFavoritePlayback(
      () => remoteDataSource.deleteFavoritePlayback(params.toModel()),
    );
  }

  Future<Either<Failure, bool>> _deleteFavoritePlayback(
      Future<bool> Function() deleteFavorite) async {
    if (await networkInfo.hasConnection) {
      try {
        final data = await deleteFavorite();
        return Right(data);
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<UserGetMeEntity>>> getMe() async =>
      await _getMe(() => remoteDataSource.getMe());

  Future<Either<Failure, List<UserGetMeEntity>>> _getMe(
      Future<List<UserGetMeModel>> Function() getMe) async {
    if (await networkInfo.hasConnection) {
      try {
        final data = await getMe();

        return Right(data.map((e) => UserGetMeMapper.mapper(e)).toList());
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      return Left(CacheFailure());
    }
  }
}
