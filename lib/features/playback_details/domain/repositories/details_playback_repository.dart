import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';

abstract class PlaybackDetailsRepository {
  Future<Either<Failure, PlaybackDetailsResponseEntity>> getPlaybackInfo(String id, String type);
}
