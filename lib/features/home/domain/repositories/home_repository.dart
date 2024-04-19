import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/domain/entities/banner_entity.dart';
import 'package:hind_app/features/home/domain/entities/genre_entity.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';
import 'package:hind_app/features/home/domain/entities/stream_entity.dart';

///[HomeRepository] interface class to join to layers data and domain.
///
/// this interface has four methods to get info to home page.
/// [getAllMovies] method to get data about movies.
/// [getAllSeries] method to get data about series.
/// [getAllGenres] method to get data about genres.
/// [getAllBanners] method to get data Banners.
abstract class HomeRepository {
  Future<Either<Failure, List<MoviesEntity>>> getAllMovies();
  Future<Either<Failure, List<SeriesEntity>>> getAllSeries();
  Future<Either<Failure, List<GenreEntity>>> getAllGenres();
  Future<Either<Failure, List<BannerEntity>>> getAllBanners();
  Future<Either<Failure, StreamEntity>> getStreamByid(String queryId);
}
