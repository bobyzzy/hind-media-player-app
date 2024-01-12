import 'dart:convert';

import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/genres_model.dart';
import 'package:hind_app/features/home/data/models/movies_model.dart';
import 'package:hind_app/features/home/data/models/series_model.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDataSource {
  Future<List<MoviesModel>> getAllMovies();
  Future<List<GenresModel>> getAllGenres();
  Future<List<SeriesModel>> getAllSeries();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<List<GenresModel>> getAllGenres() async {
    final response = await client.get(Uri.parse('http://91.107.122.198:8888/api/movies/genre/'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => GenresModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  @override
  Future<List<MoviesModel>> getAllMovies() async {
    final response = await client.get(
        Uri.parse('http://91.107.122.198:8888/api/movies/all_movies/'),
        headers: {"Content-Type": 'application/json'});

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data as List).map((e) => MoviesModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  @override
  Future<List<SeriesModel>> getAllSeries() async {
    final response =
        await client.get(Uri.parse('http://91.107.122.198:8888/api/series/all_series/'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => SeriesModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }
}
