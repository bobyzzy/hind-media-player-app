// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/details_playback/data/models/playback_details_model.dart';
import 'package:hind_app/features/details_playback/domain/entities/playback_details_entity.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/features/details_playback/data/datasources/playback_details_local_datasource.dart';
import 'package:hind_app/features/details_playback/data/datasources/playback_details_remote_datasource.dart';
import 'package:hind_app/features/details_playback/domain/repositories/details_playback_repository.dart';

class PlaybackDetailsRepositoryImpl implements PlaybackDetailsRepository {
  final DetailsPlaybackRemoteDatasource remoteDataSource;
  final DetailsPlaybackLocalDataSource localDataSource;
  final InternetConnectionChecker networkInfo;

  PlaybackDetailsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, PlaybackDetailsEntity>> getPlaybackInfo(String id) async =>
      await _getPlaybackInfo(() => remoteDataSource.getDetails(id));



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
