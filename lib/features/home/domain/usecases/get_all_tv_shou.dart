import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';

class GetAllTvShouUsecase extends Usecase<List<MoviesResponseEntity>, TvShouParams> {
  final HomeRepository repository;

  GetAllTvShouUsecase(this.repository);

  Future<Either<Failure, List<MoviesResponseEntity>>> call(TvShouParams params) async {
    return await repository.getAllTvShou();
  }
}

class TvShouParams extends Equatable {
  @override
  List<Object?> get props => [];
}
