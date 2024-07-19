import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/search/data/models/search_data_model.dart';

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
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }

      rethrow;
    }

    throw UnimplementedError();
  }
}
