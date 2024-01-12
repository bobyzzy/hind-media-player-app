import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/genres_model.dart';
import 'package:hind_app/features/home/data/models/movies_model.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/data/datasources/local_data_source.dart';
import 'package:hind_app/features/home/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/home/domain/entities/genre_entity.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final InternetConnectionChecker networkInfo;

  MoviesRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<GenreEntity>>> getAllGenres() async {
    return await _getAllGenres(() => remoteDataSource.getAllGenres());
  }

  @override
  Future<Either<Failure, List<MoviesEntity>>> getAllMovies() async {
    return await _getAllMovies(() => remoteDataSource.getAllMovies());
  }

  Future<Either<Failure, List<MoviesModel>>> _getAllMovies(
      Future<List<MoviesModel>> Function() getAllMovies) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllMovies = await getAllMovies();
        localDataSource.moviesToCache(remoteAllMovies);
        return Right(remoteAllMovies);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localAllMovies = await localDataSource.getLastMoviesFromCache();
        return Right(localAllMovies);
      } on CacheExeption {
        return Left(CacheFailure());
      }
    }
  }

  Future<Either<Failure, List<GenreEntity>>> _getAllGenres(
      Future<List<GenresModel>> Function() getAllGenres) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllGenres = await getAllGenres();
        localDataSource.genresToCache(remoteAllGenres);
        return Right(remoteAllGenres);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localAllGenres = await localDataSource.getLastGenresFromCache();
        return Right(localAllGenres);
      } on CacheExeption {
        return Left(CacheFailure());
      }
    }
  }
}
