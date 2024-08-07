import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/genre_entity.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';

class GetAllGenres extends Usecase<List<GenresResponseEntity>, ParamsAllGenres> {
  HomeRepository repository;

  GetAllGenres(this.repository);

  Future<Either<Failure, List<GenresResponseEntity>>> call(ParamsAllGenres params) async {
    return await repository.getAllGenres();
  }
}

class ParamsAllGenres extends Equatable {
  @override
  List<Object?> get props => [];
}
