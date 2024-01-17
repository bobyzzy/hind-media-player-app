// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/category/data/models/category_data_model.dart';
import 'package:hind_app/features/category/data/models/category_genre_model.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/category/data/datasources/category_local_data_source.dart';
import 'package:hind_app/features/category/data/datasources/category_remote_data_source.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:hind_app/features/category/domain/repositories/category_repository.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';

//TODO: Надо изменить входные данные чтобы не были статиечскими

const TYPE = 'all_movies';
const ID_QUERY = '4';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;
  final CategoryLocalDataSource localDataSource;
  final InternetConnectionChecker connectionChecker;
  CategoryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectionChecker,
  });

  @override
  Future<Either<Failure, List<CategoryGenreEntity>>> getGenre() async {
    return await _getCategoryGenre(() => remoteDataSource.getCategoryGenre());
  }

  @override
  Future<Either<Failure, List<CategoryDataEntity>>> getGenreData() async {
    return await _getGenreData(() => remoteDataSource.getCategoryGenreData(TYPE, ID_QUERY));
  }

  @override
  Future<Either<Failure, List<CategoryDataEntity>>> getData(String type, String query) async {
    return await _getData(() => remoteDataSource.getCategoryData(type, query));
  }

  @override
  Future<Either<Failure, List<SeriesEntity>>> getSeries() {
    // TODO: implement getSeries
    throw UnimplementedError();
  }

  Future<Either<Failure, List<CategoryDataEntity>>> _getGenreData(
      Future<List<CategoryDataModel>> Function() getGenreData) async {
    if (await connectionChecker.hasConnection) {
      try {
        final remoteAllGenreData = await getGenreData();
        return Right(remoteAllGenreData);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      //TODO: Не добавил локальный источник
      throw ArgumentError();
    }
  }

  Future<Either<Failure, List<CategoryGenreEntity>>> _getCategoryGenre(
      Future<List<CategoryGenreModel>> Function() getGenre) async {
    if (await connectionChecker.hasConnection) {
      try {
        final remoteGenre = await getGenre();
        return Right(remoteGenre);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      //TODO: Не добавил локальный источник
      throw ArgumentError();
    }
  }

  Future<Either<Failure, List<CategoryDataEntity>>> _getData(
      Future<List<CategoryDataModel>> Function() getData) async {
    if (await connectionChecker.hasConnection) {
      try {
        final remoteData = await getData();
        return Right(remoteData);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      //TODO: Не добавил локальный источник
      throw ArgumentError();
    }
  }
}
