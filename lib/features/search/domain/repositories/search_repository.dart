import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/search/domain/entities/search_data_entity.dart';

abstract class SearchDataRepository {
  Future<Either<Failure, List<SearchDataEntity>>> searchPlaybacks(String query);
}
