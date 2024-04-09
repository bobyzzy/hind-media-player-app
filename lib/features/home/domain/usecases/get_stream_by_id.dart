// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';

import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/stream_entity.dart';
import 'package:hind_app/features/home/domain/repositories/movies_repository.dart';

class GetStreamById extends Usecase<StreamEntity, StreamByIdParams> {
  final MoviesRepository repository;

  GetStreamById(this.repository);

  @override
  Future<Either<Failure, StreamEntity>> call(StreamByIdParams params) async {
    return await repository.getStreamByid(params.queryId);
  }
}

class StreamByIdParams extends Equatable {
  final String queryId;
  const StreamByIdParams({required this.queryId});

  @override
  List<Object?> get props => [queryId];
}
