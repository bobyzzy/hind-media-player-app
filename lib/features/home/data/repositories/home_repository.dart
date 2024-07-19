import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/banners_model/banners_response_model.dart';
import 'package:hind_app/features/home/data/models/genres_model/genres_response_model.dart';
import 'package:hind_app/features/home/data/models/movies_model/movies_response_model.dart';
import 'package:hind_app/features/home/data/models/series_model/series_response_model.dart';
import 'package:hind_app/features/home/data/models/stream_model.dart';
import 'package:hind_app/features/home/domain/entities/banner_entity.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';
import 'package:hind_app/features/home/domain/entities/stream_entity.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/data/datasources/local_data_source.dart';
import 'package:hind_app/features/home/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/home/domain/entities/genre_entity.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';

///[HomerepositoryImpl] this module implementing all methods of interface[HomeRepository]
///[RemoteDataSource] field to get remote data that used by home screen
///[LocalDataSource] field to get local data that used by home screen
///[InternetConnectionChecker] check internet connection and choose which one of data source will be used
class HomerepositoryImpl implements HomeRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final InternetConnectionChecker networkInfo;

  HomerepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  ///Implementing [getAllGenres] method to get genres
  @override
  Future<Either<Failure, List<GenresResponseEntity>>> getAllGenres() async {
    return await _getAllGenres(() => remoteDataSource.getAllGenres());
  }

  ///Implementing [getAllMovies] method to get all movies
  @override
  Future<Either<Failure, List<MoviesResponseEntity>>> getAllMovies() async {
    return await _getAllMovies(() => remoteDataSource.getAllMovies());
  }

  ///Implementing [searchMovies] method to get all search movie
  Future<Either<Failure, List<MoviesResponseEntity>>> searchMovies(String query) async {
    return await _searchMovies(() => remoteDataSource.searchMovie(query));
  }

  @override
  Future<Either<Failure, StreamEntity>> getStreamByid(String queryId) async {
    return await _getStreamById(() => remoteDataSource.getStreamById(queryId));
  }

  Future<Either<Failure, List<MoviesResponseEntity>>> _searchMovies(
      Future<List<MoviesResponseModel>> Function() searchMovies) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteSearchMovies = await searchMovies();
        List<MoviesResponseEntity> parsedData =
            remoteSearchMovies.map((e) => MoviesResponseMapper.moviesResponseMapper(e)).toList();

        return Right(parsedData);
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      throw CacheExeption();
    }
  }

  ///private methods[_getAllMovies]. Callback function to call remote or local datasource
  Future<Either<Failure, List<MoviesResponseEntity>>> _getAllMovies(
      Future<List<MoviesResponseModel>> Function() getAllMovies) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllMovies = await getAllMovies();
        localDataSource.moviesToCache(remoteAllMovies);
        final List<MoviesResponseEntity> parsedData =
            remoteAllMovies.map((e) => MoviesResponseMapper.moviesResponseMapper(e)).toList();
        return Right(parsedData);
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      try {
        final localAllMovies = await localDataSource.getLastMoviesFromCache();
        final List<MoviesResponseEntity> parsedData =
            localAllMovies.map((e) => MoviesResponseMapper.moviesResponseMapper(e)).toList();
        return Right(parsedData);
      } on CacheExeption {
        return Left(CacheFailure());
      }
    }
  }

  ///private methods[_getAllGenres]. Callback function to get genres remote or local datasource
  Future<Either<Failure, List<GenresResponseEntity>>> _getAllGenres(
      Future<List<GenresResponseModel>> Function() getAllGenres) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllGenres = await getAllGenres();
        localDataSource.genresToCache(remoteAllGenres);

        return Right(remoteAllGenres.map((e) => GenresMapper.genresMapper(e)).toList());
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      try {
        final localAllGenres = await localDataSource.getLastGenresFromCache();

        return Right(localAllGenres.map((e) => GenresMapper.genresMapper(e)).toList());
      } on CacheExeption {
        return Left(CacheFailure());
      }
    }
  }

  ///private methods[_getStreamById]. Callback function to get genres remote or local datasource
  Future<Either<Failure, StreamEntity>> _getStreamById(
      Future<StreamModel> Function() getStreamById) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteStreamById = await getStreamById();
        return Right(remoteStreamById);
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
  Future<Either<Failure, List<SeriesResponseEntity>>> getAllSeries() async {
    return await _getAllSeries(() => remoteDataSource.getAllSeries());
  }

  Future<Either<Failure, List<SeriesResponseEntity>>> _getAllSeries(
      Future<List<SeriesResponseModel>> Function() getAllSeries) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllSeries = await getAllSeries();

        final List<SeriesResponseEntity> parsedData =
            remoteAllSeries.map((e) => SeriesResponseMapper.seriesMapper(e)).toList();

        return Right(parsedData);
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      //не добавил локальный источник
      throw ArgumentError();
    }
  }

  @override
  Future<Either<Failure, List<BannerResponseEntity>>> getAllBanners() async {
    return await _getAllBanners(() => remoteDataSource.getAllBanner());
  }

  Future<Either<Failure, List<BannerResponseEntity>>> _getAllBanners(
      Future<List<BannerResponseModel>> Function() getAllBanners) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllBanners = await getAllBanners();

        List<BannerResponseEntity> parsedList =
            remoteAllBanners.map((e) => BannerMapper.mapper(e)).toList();
        return Right(parsedList);
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
  Future<Either<Failure, List<MoviesResponseEntity>>> getAllTvShou() async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllTvShou = await remoteDataSource.getAllTvShou();
        List<MoviesResponseEntity> parsedData =
            remoteAllTvShou.map((e) => MoviesResponseMapper.moviesResponseMapper(e)).toList();

        return Right(parsedData);
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

  Future<Either<Failure, List<MoviesResponseEntity>>> getAllAboutIndia() async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllMovies = await remoteDataSource.getAllAboutIndia();
        final List<MoviesResponseEntity> parsedData =
            remoteAllMovies.map((e) => MoviesResponseMapper.moviesResponseMapper(e)).toList();
        return Right(parsedData);
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
  Future<Either<Failure, List<MoviesResponseEntity>>> GetAllSoundTrack() async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllMovies = await remoteDataSource.getAllSoundtrack();
        final List<MoviesResponseEntity> parsedData =
            remoteAllMovies.map((e) => MoviesResponseMapper.moviesResponseMapper(e)).toList();
        return Right(parsedData);
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
