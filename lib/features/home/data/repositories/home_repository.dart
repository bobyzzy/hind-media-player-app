import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/banners_model.dart';
import 'package:hind_app/features/home/data/models/genres_model.dart';
import 'package:hind_app/features/home/data/models/movies_model.dart';
import 'package:hind_app/features/home/data/models/series_model.dart';
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

//TODO: НАДО ПРОВЕРИТЬ ДАННЫЕ С ФИЛЬМОВ И СЕРИАЛОВ НА СХОЖЕСТЬ И ЕСЛИ ОНИ ОДИНАКОВЫЕ ОПТИМИЗИРОВАТЬ МЕТОДЫ

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
  Future<Either<Failure, List<GenreEntity>>> getAllGenres() async {
    return await _getAllGenres(() => remoteDataSource.getAllGenres());
  }

  ///Implementing [getAllMovies] method to get all movies
  @override
  Future<Either<Failure, List<MoviesEntity>>> getAllMovies() async {
    return await _getAllMovies(() => remoteDataSource.getAllMovies());
  }

  ///Implementing [searchMovies] method to get all search movie
  ///TODO!:надо убрать
  Future<Either<Failure, List<MoviesEntity>>> searchMovies(String query) async {
    return await _searchMovies(() => remoteDataSource.searchMovie(query));
  }

  ///TODO: подумать
  @override
  Future<Either<Failure, StreamEntity>> getStreamByid(String queryId) async {
    return await _getStreamById(() => remoteDataSource.getStreamById(queryId));
  }

  //TODO!: подумать над этим
  Future<Either<Failure, List<MoviesModel>>> _searchMovies(
      Future<List<MoviesModel>> Function() searchMovies) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteSearchMovies = await searchMovies();
        return Right(remoteSearchMovies);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      throw CacheExeption();
    }
  }

  ///private methods[_getAllMovies]. Callback function to call remote or local datasource
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

  ///private methods[_getAllGenres]. Callback function to get genres remote or local datasource
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

  ///private methods[_getStreamById]. Callback function to get genres remote or local datasource
  Future<Either<Failure, StreamEntity>> _getStreamById(
      Future<StreamModel> Function() getStreamById) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteStreamById = await getStreamById();
        return Right(remoteStreamById);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<SeriesEntity>>> getAllSeries() async {
    return await _getAllSeries(() => remoteDataSource.getAllSeries());
  }

  Future<Either<Failure, List<SeriesEntity>>> _getAllSeries(
      Future<List<SeriesModel>> Function() getAllSeries) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllSeries = await getAllSeries();

        return Right(remoteAllSeries);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      //не добавил локальный источник
      throw ArgumentError();
    }
  }

  @override
  Future<Either<Failure, List<BannerEntity>>> getAllBanners() async{
    // TODO: implement getAllBanners
    return await _getAllBanners(() => remoteDataSource.getAllBanner(),);
  }

  Future<Either<Failure, List<BannerEntity>>> _getAllBanners(
      Future<List<BannerModel>> Function() getAllBanners) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllBanners = await getAllBanners();

        return Right(remoteAllBanners);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      return Left(CacheFailure());
    }
  }
}
