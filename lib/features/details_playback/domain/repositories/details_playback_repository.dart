import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/details_playback/domain/entities/playback_details_entity.dart';

abstract class PlaybackDetailsRepository {
  Future<Either<Failure, PlaybackDetailsEntity>> getPlaybackInfo(String id);
}
