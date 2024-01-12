import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';

abstract class SeriesRepository {
  Future<Either<Failure, List<SeriesEntity>>> getAllSeries();
}
