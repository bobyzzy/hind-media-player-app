import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/search/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/search/data/models/search_data_model.dart';
import 'package:hind_app/features/search/domain/entities/search_data_entity.dart';
import 'package:hind_app/features/search/domain/repositories/search_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

/// Implementation of abstract class [SearchDataRepository] of domain layer
/// with instances [SearchRemoteDataSource] to get endpoint of search logic from backend
/// This modal uses [InternetConnectionChecker] to check connection status and to handle exeptions
class SearchDataRepositoryImpl implements SearchDataRepository {
  final SearchRemoteDataSource remoteDataSource;
  final InternetConnectionChecker connectionChecker;

  SearchDataRepositoryImpl({required this.remoteDataSource, required this.connectionChecker});

  @override
  Future<Either<Failure, List<SearchDataEntity>>> searchPlaybacks(String query) async {
    return await _searchPlaybacks(() => remoteDataSource.getSearchData(query));
  }

  Future<Either<Failure, List<SearchDataEntity>>> _searchPlaybacks(
      Future<List<SearchDataModel>> Function() getSearchData) async {
    if (await connectionChecker.hasConnection) {
      try {
        final remoteSearchData = await getSearchData();
        final parsedData = remoteSearchData.map((e) => SearchMapper.mapper(e)).toList();
        return Right(parsedData);
      } on ServerExeption {
        return Left(ServerFailure());
      } on AuthExeption {
        return Left(AuthFailure());
      } on NotFoundExeption {
        return Left(NotFoundFailue());
      }
    } else {
      throw ServerExeption();
    }
  }
}
