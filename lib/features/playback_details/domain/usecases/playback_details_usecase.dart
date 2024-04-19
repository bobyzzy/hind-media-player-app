// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';
import 'package:hind_app/features/playback_details/domain/repositories/details_playback_repository.dart';

class PlaybackDetailsUsecase extends Usecase<PlaybackDetailsEntity, ParamsDetails> {
  PlaybackDetailsRepository repository;

  PlaybackDetailsUsecase({required this.repository});
  @override
  Future<Either<Failure, PlaybackDetailsEntity>> call(params) async =>
      await repository.getPlaybackInfo(params.id, params.type);
}

class ParamsDetails extends Equatable {
  final String id;
  final String type;

  ParamsDetails({required this.id, required this.type});

  @override
  List<Object?> get props => [id];
}
