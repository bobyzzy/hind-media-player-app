import 'dart:convert';

import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/search/data/models/search_data_model.dart';
import 'package:hind_app/core/constants/constants.dart';
import 'package:http/http.dart' as http;

///abstract class [SearchRemoteDataSource] with method getSearchData
abstract class SearchRemoteDataSource {
  Future<List<SearchDataModel>> getSearchData(String query);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final http.Client client;

  SearchRemoteDataSourceImpl({required this.client});

  @override
  Future<List<SearchDataModel>> getSearchData(String query) async {
    final responseMovies =
        await client.get(Uri.parse(Constants.API_CLIENT + Constants.PATH_MOVIE + query));
    final responseSeries =
        await client.get(Uri.parse(Constants.API_CLIENT + Constants.PATH_SERIES + query));
    if (responseMovies.statusCode == 200 && responseSeries.statusCode == 200) {
      final parsedMovies = json.decode(responseMovies.body);
      final parsedSeries = json.decode(responseSeries.body);

      List<SearchDataModel> allData = [
        ...(parsedMovies as List).map((e) => SearchDataModel.fromJson(e)).toList(),
        ...(parsedSeries as List).map((e) => SearchDataModel.fromJson(e)).toList(),
      ];

      return allData;
    } else {
      throw ServerExeption();
    }
  }
}
