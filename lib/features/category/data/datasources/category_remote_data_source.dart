import 'dart:convert';

import 'package:hind_app/core/errors/exeptions.dart';
import 'package:http/http.dart' as http;

import 'package:hind_app/features/category/data/models/category_genre_data_model.dart';
import 'package:hind_app/features/category/data/models/category_genre_model.dart';
import 'package:hind_app/features/category/data/models/category_data_model.dart';

//  http://91.107.122.198:8888/api/movies/all_movies/?genre=4
//  http://91.107.122.198:8888/api/series/all_series/

abstract class CategoryRemoteDataSource {
  Future<List<CategoryGenreDataModel>> getCategoryGenreData(String type, String idQuery);
  Future<List<CategoryGenreModel>> getCategoryGenre();
  Future<List<CategoryDataModel>> getCategoryData(String type, String query);
  Future<List<CategoryDataModel>> getCategorySeries();
}

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  final http.Client client;
  CategoryRemoteDataSourceImpl({required this.client});
  @override
  Future<List<CategoryGenreModel>> getCategoryGenre() async {
    final response = await client.get(Uri.parse('http://91.107.122.198:8888/api/movies/genre/'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => CategoryGenreModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  @override
  Future<List<CategoryGenreDataModel>> getCategoryGenreData(String type, String idQuery) async {
    final response =
        await client.get(Uri.parse('http://91.107.122.198:8888/api/movies/$type/?genre=$idQuery'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => CategoryGenreDataModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

//TODO: Убрать методи и модели так же сущности потому что данные одинаковые

  @override
  Future<List<CategoryDataModel>> getCategoryData(String type, String query) async {
    final response = await client.get(Uri.parse('http://91.107.122.198:8888/api/$type/$query/'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => CategoryDataModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  @override
  Future<List<CategoryDataModel>> getCategorySeries() async {
    final response = await client.get(Uri.parse(''));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => CategoryDataModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }
}
