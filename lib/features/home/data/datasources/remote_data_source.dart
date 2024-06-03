import 'dart:convert';

import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/banners_model.dart';
import 'package:hind_app/features/home/data/models/genres_model.dart';
import 'package:hind_app/features/home/data/models/movies_model.dart';
import 'package:hind_app/features/home/data/models/series_model.dart';
import 'package:hind_app/features/home/data/models/stream_model.dart';
import 'package:http/http.dart' as http;

//TODO!: изменить статичные url адреса

abstract class RemoteDataSource {
  Future<List<MoviesModel>> getAllMovies();
  Future<List<GenresModel>> getAllGenres();
  Future<List<SeriesModel>> getAllSeries();
  Future<List<BannerModel>> getAllBanner();
  Future<List<MoviesModel>> searchMovie(String query);
  Future<StreamModel> getStreamById(String queryId);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final http.Client client;
  RemoteDataSourceImpl({required this.client});

  @override
  Future<List<GenresModel>> getAllGenres() async {
    final response = await client.get(Uri.parse('https://hindi.uz/api/movies/genre/'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => GenresModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  @override
  Future<List<MoviesModel>> getAllMovies() async {
    final response = await client.get(Uri.parse('https://hindi.uz/api/movies/all_movies/'),
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
    final response = await client.get(Uri.parse('https://hindi.uz/api/series/all_series/'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => SeriesModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

//TODO!: убрать
  @override
  Future<List<MoviesModel>> searchMovie(String query) async {
    final response =
        await client.get(Uri.parse('https://hindi.uz/api/movies/all_movies/?search=$query'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((e) => MoviesModel.fromJson(e)).toList();
    } else {
      throw ServerExeption();
    }
  }

  @override
  Future<StreamModel> getStreamById(String queryId) async { //TODO: поменять на новый response взять отсюда  https://hindi.uz/api/series/all_series/19/
    final response = await client.get(Uri.parse('https://hindi.uz/api/movies/stream/$queryId/'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return StreamModel.fromJson(data);
    } else {
      throw ServerExeption();
    }
  }

  @override
  Future<List<BannerModel>> getAllBanner() async {
    final response = await client.get(Uri.parse('https://hindi.uz/api/main/all_banners/'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return (data as List).map((json) => BannerModel.fromJson(json)).toList();
    } else {
      throw ServerExeption();
    }
  }
}
