import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';

class GetAllSoundTrack extends Usecase<List<MoviesResponseEntity>, GetAllSoundractParams> {
  final HomeRepository repository;

  GetAllSoundTrack(this.repository);

  Future<Either<Failure, List<MoviesResponseEntity>>> call(GetAllSoundractParams params) async {
    return await repository.GetAllSoundTrack();
  }
}

class GetAllSoundractParams extends Equatable {
  @override
  List<Object?> get props => [];
}
