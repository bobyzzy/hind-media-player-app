// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/series_model.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/data/datasources/local_data_source.dart';
import 'package:hind_app/features/home/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';
import 'package:hind_app/features/home/domain/repositories/series_repository.dart';

class SeriesRepositoryImpl implements SeriesRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final InternetConnectionChecker networkInfo;

  SeriesRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<SeriesEntity>>> getAllSeries() async {
    return await _getAllSeries(() => remoteDataSource.getAllSeries());
  }

  Future<Either<Failure, List<SeriesEntity>>> _getAllSeries(
      Future<List<SeriesModel>> Function() getAllSeries) async {
    if (await networkInfo.hasConnection) {
      try {
        final remoteAllSeries = await getAllSeries();

        return Right(remoteAllSeries);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      //не добавил локальный источник
      throw ArgumentError();
    }
  }
}
