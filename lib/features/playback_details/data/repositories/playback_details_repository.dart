// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/playback_details/data/models/playback_details_model.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/features/playback_details/data/datasources/playback_details_local_datasource.dart';
import 'package:hind_app/features/playback_details/data/datasources/playback_details_remote_datasource.dart';
import 'package:hind_app/features/playback_details/domain/repositories/details_playback_repository.dart';

class PlaybackDetailsRepositoryImpl implements PlaybackDetailsRepository {
  final PlaybackDetailsRemoteDatasource remoteDataSource;
  final PlaybackDetailsLocalDataSource localDataSource;
  final InternetConnectionChecker networkInfo;

  PlaybackDetailsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, PlaybackDetailsEntity>> getPlaybackInfo(String id, String type) async =>
      await _getPlaybackInfo(() => remoteDataSource.getDetails(id, type));

  Future<Either<Failure, PlaybackDetailsModel>> _getPlaybackInfo(
      Future<PlaybackDetailsModel> Function() getPlaybackInfo) async {
    if (await networkInfo.hasConnection) {
      try {
        final data = await getPlaybackInfo();
        return Right(data);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      throw ServerExeption();
    }
  }
}
