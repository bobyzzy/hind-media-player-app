import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';

class GetAllAboutIndia extends Usecase<List<MoviesResponseEntity>, AboutIndiaParams> {
  final HomeRepository repository;

  GetAllAboutIndia(this.repository);

  Future<Either<Failure, List<MoviesResponseEntity>>> call(AboutIndiaParams params) async {
    return await repository.getAllAboutIndia();
  }
}

class AboutIndiaParams extends Equatable {
  @override
  List<Object?> get props => [];
}
