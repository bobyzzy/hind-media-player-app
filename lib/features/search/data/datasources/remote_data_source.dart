
import 'package:dio/dio.dart';
import 'package:hind_app/core/extensions/failure_extensions.dart';
import 'package:hind_app/features/search/data/models/search_data_model.dart';

import '../../../../core/errors/exceptions.dart';

///abstract class [SearchRemoteDataSource] with method getSearchData
abstract class SearchRemoteDataSource {
  Future<List<SearchDataModel>> getSearchData(String query);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final Dio client;

  SearchRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SearchDataModel>> getSearchData(String query) async {
    final responseMovies = await client.get("movies/all_movies/?search=$query");
    final responseSeries = await client.get("series/all_series/?search=$query");
    try {
      if (responseMovies.statusCode == 200 && responseSeries.statusCode == 200) {
        final parsedMovies = responseMovies.data;
        final parsedSeries = responseSeries.data;

        List<SearchDataModel> allData = [
          ...(parsedMovies as List).map((e) => SearchDataModel.fromJson(e)).toList(),
          ...(parsedSeries as List).map((e) => SearchDataModel.fromJson(e)).toList(),
        ];
        return allData;
      }
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedResponseException();
    }
    throw UnimplementedError();
  }
}
