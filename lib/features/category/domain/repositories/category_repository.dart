import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<CategoryDataEntity>>> getDataByGenre(
      String type, String subtype, String id);
  Future<Either<Failure, List<CategoryGenreEntity>>> getAllGenres();
  Future<Either<Failure, List<CategoryDataEntity>>> getAllData(String type, String query);
  Future<Either<Failure, List<CategoryDataEntity>>> getDataByType(String type, String subtype);
}
