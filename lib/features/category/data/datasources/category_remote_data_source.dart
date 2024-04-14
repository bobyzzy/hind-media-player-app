import 'dart:convert';

import 'package:hind_app/core/errors/exeptions.dart';
import 'package:http/http.dart' as http;

import 'package:hind_app/features/category/data/models/category_genre_model.dart';
import 'package:hind_app/features/category/data/models/category_data_model.dart';

///Abstract class of [CategoryRemoteDataSource] with four method
///[getDataByGenre] to get one genre
///[getAllGenres] to get all genres
///[getAllData] to get data fro API
///[getDataByType] to get sub type like series or movies etc.
abstract class CategoryRemoteDataSource {
  Future<List<CategoryDataModel>> getDataByGenre(String type, String subtype, String idQuery);
  Future<List<CategoryGenreModel>> getAllGenres();
  Future<List<CategoryDataModel>> getAllData(String type, String query);
  Future<List<CategoryDataModel>> getDataByType(String type, String subtype);
}

///Implentations of abstract methods [CategoryRemoteDataSource]
///in this module uses http class to connect API and returns decoded JSON from API
/// also this module uses [ServerExeption] to catch errors of Connection.
class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  final http.Client client;
  CategoryRemoteDataSourceImpl({required this.client});

  ///Method of getting all genres.
  @override
  Future<List<CategoryGenreModel>> getAllGenres() async {
    final response = await client.get(Uri.parse('https://hindi.uz/api/movies/genre/'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => CategoryGenreModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  ///Method [getDataByGenre] with parameters [type] to get path of API
  ///[subtype] also path API and [idQuery] query of API. Return Future<List<CategoryDataModel>>
  @override
  Future<List<CategoryDataModel>> getDataByGenre(
      String type, String subtype, String idQuery) async {
    final response =
        await client.get(Uri.parse('https://hindi.uz/api/$type/$subtype/?genre=$idQuery'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => CategoryDataModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  //TODO: Убрать методи и модели так же сущности потому что данные одинаковые
  //TODO: Убрать статичные поля и заменить на динамические

  ///Method [getAllData] with parameters [type] and [query]
  ///all this parameters needs to path API. And returns Future<List<CategoryDataModel>>
  @override
  Future<List<CategoryDataModel>> getAllData(String type, String query) async {
    final List<CategoryDataModel> list;
    final responseMovies = await client.get(Uri.parse('https://hindi.uz/api/movies/all_movies/'));
    final responseSeries = await client.get(Uri.parse('https://hindi.uz/api/series/all_series/'));

    if (responseMovies.statusCode == 200 && responseSeries.statusCode == 200) {
      var moives = json.decode(responseMovies.body);
      var series = json.decode(responseSeries.body);
      list = (moives as List).map((e) => CategoryDataModel.fromJson(e)).toList();
      list.addAll((series as List).map((e) => CategoryDataModel.fromJson(e)).toList());
      return list;
    } else {
      throw ServerExeption();
    }
  }

  ///Method [getDataByType] include parameters [type] and [subtype].
  ///Returns Future<List<CategoryDataModel>>.
  @override
  Future<List<CategoryDataModel>> getDataByType(String type, String subtype) async {
    final response = await client.get(Uri.parse('https://hindi.uz/api/$type/$subtype/'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => CategoryDataModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }
}
