import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/repositories/movies_repository.dart';

class GetAllMovies extends Usecase<List<MoviesEntity>> {
  final MoviesRepository repository;

  GetAllMovies(this.repository);

  Future<Either<Failure, List<MoviesEntity>>> call() async {
    return await repository.getAllMovies();
  }
}

class Params extends Equatable {
  @override
  List<Object?> get props => [];
}
