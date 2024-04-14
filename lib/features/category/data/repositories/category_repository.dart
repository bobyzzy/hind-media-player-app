// ignorCategoryDataEntity_for_file: public_member_api_docs, sort_constructors_first
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

///[CategoryRepositoryImpl] abstract class that implements[CategoryRepository].
///[CategoryRemoteDataSource] this module can call datas from  to get data remote from API.
///[CategoryLocalDataSource] to get data from local DB.
///[InternetConnectionChecker] to check connection status
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;
  final CategoryLocalDataSource localDataSource;
  final InternetConnectionChecker connectionChecker;
  CategoryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectionChecker,
  });

  ///[getAllGenres] used callback function to parse from [CategoryDataModel] to [CategoryGenreEntity]
  @override
  Future<Either<Failure, List<CategoryGenreEntity>>> getAllGenres() async =>
      await _getAllGenres(() => remoteDataSource.getAllGenres());

  Future<Either<Failure, List<CategoryGenreEntity>>> _getAllGenres(
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

  ///[getAllGenres] used callback function to parse from [CategoryDataModel] to [CategoryDataEntity]
  @override
  Future<Either<Failure, List<CategoryDataEntity>>> getDataByGenre(
          String type, String subtype, String id) async =>
      await _getDataByGenre(() => remoteDataSource.getDataByGenre(type, subtype, id));

  Future<Either<Failure, List<CategoryDataEntity>>> _getDataByGenre(
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

  ///[getAllGenres] used callback function to parse from [CategoryDataEntity] to [CategoryDataModel]
  @override
  Future<Either<Failure, List<CategoryDataEntity>>> getAllData(String type, String query) async =>
      await _getAllData(() => remoteDataSource.getAllData(type, query));

  Future<Either<Failure, List<CategoryDataEntity>>> _getAllData(
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

  ///[getAllGenres] used callback function to parse from [CategoryDataModel] to [CategoryGenreEntity]
  @override
  Future<Either<Failure, List<CategoryDataEntity>>> getDataByType(
      String type, String subtype) async {
    return await _getDataByType(() => remoteDataSource.getDataByType(type, subtype));
  }

  Future<Either<Failure, List<CategoryDataEntity>>> _getDataByType(
      Future<List<CategoryDataModel>> Function() getDataByType) async {
    if (await connectionChecker.hasConnection) {
      try {
        final remoteData = await getDataByType();
        return Right(remoteData);
      } on ServerExeption {
        return Left(ServerFailure());
      }
    } else {
      throw ArgumentError();
    }
  }
}
