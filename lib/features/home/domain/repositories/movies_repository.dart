import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/domain/entities/genre_entity.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<MoviesEntity>>> getAllMovies();
  Future<Either<Failure, List<GenreEntity>>> getAllGenres();
  Future<Either<Failure, List<MoviesEntity>>> searchMovies(String query);
}
