import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_data_entity.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<CategoryGenreDataEntity>>> getGenreData();
  Future<Either<Failure, List<CategoryGenreEntity>>> getGenre();
  Future<Either<Failure, List<CategoryDataEntity>>> getData(String type,String query);
  Future<Either<Failure, List<SeriesEntity>>> getSeries();
}
