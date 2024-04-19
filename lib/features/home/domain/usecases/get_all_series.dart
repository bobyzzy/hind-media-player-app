import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';

class GetAllSeries extends Usecase<List<SeriesEntity>, ParamsAllSeries> {
  final HomeRepository repository;

  GetAllSeries(this.repository);
  @override
  Future<Either<Failure, List<SeriesEntity>>> call(ParamsAllSeries) async {
    return await repository.getAllSeries();
  }
}

class ParamsAllSeries extends Equatable {
  @override
  List<Object?> get props => [];
}
