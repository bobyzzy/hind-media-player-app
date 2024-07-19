import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/banners_model/banners_response_model.dart';
import 'package:hind_app/features/home/data/models/genres_model/genres_response_model.dart';
import 'package:hind_app/features/home/data/models/movies_model/movies_response_model.dart';
import 'package:hind_app/features/home/data/models/series_model/series_response_model.dart';
import 'package:hind_app/features/home/data/models/stream_model.dart';
import 'package:hind_app/main.dart';

abstract class RemoteDataSource {
  Future<List<MoviesResponseModel>> getAllMovies();
  Future<List<MoviesResponseModel>> getAllAboutIndia();
  Future<List<MoviesResponseModel>> getAllSoundtrack();

  Future<List<MoviesResponseModel>> getAllTvShou();
  Future<List<GenresResponseModel>> getAllGenres();
  Future<List<SeriesResponseModel>> getAllSeries();
  Future<List<BannerResponseModel>> getAllBanner();
  Future<List<MoviesResponseModel>> searchMovie(String query);
  Future<StreamModel> getStreamById(String queryId);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final Dio client;
  RemoteDataSourceImpl({required this.client});

  @override
  Future<List<GenresResponseModel>> getAllGenres() async {
    try {
      final response = await client.get('movies/genre/');
      if (response.statusCode == 200) {
        var data = json.decode(response.data);
        return (data as List).map((e) => GenresResponseModel.fromJson(e)).toList();
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

  @override
  Future<List<MoviesResponseModel>> getAllMovies() async {
    try {
      final response = await client.get('movies/all_movies/');
      if (response.statusCode == 200) {
        final data = response.data;
        return (data as List).map((e) => MoviesResponseModel.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 500) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
    }

    throw UnimplementedError();
  }

  @override
  Future<List<SeriesResponseModel>> getAllSeries() async {
    try {
      final response = await client.get('series/all_series/');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => SeriesResponseModel.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      logger.e(e.response.toString());

      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
    }

    throw UnimplementedError();
  }

  @override
  Future<List<MoviesResponseModel>> searchMovie(String query) async {
    try {
      final response = await client.get('movies/all_movies/?search=$query');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => MoviesResponseModel.fromJson(e)).toList();
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
    }

    throw UnimplementedError();
  }

  @override
  Future<StreamModel> getStreamById(String queryId) async {
    //TODO: поменять на новый response взять отсюда  https://hindi.uz/api/series/all_series/19/
    try {
      final response = await client.get('movies/stream/$queryId/');
      if (response.statusCode == 200) {
        var data = json.decode(response.data);
        return StreamModel.fromJson(data);
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
    }

    throw UnimplementedError();
  }

  @override
  Future<List<BannerResponseModel>> getAllBanner() async {
    try {
      final response = await client.get('main/all_banners/');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((json) => BannerResponseModel.fromJson(json)).toList();
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
    }

    throw UnimplementedError();
  }

  @override
  Future<List<MoviesResponseModel>> getAllTvShou() async {
    try {
      final response = await client.get('tv_show/all_tvshows');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => MoviesResponseModel.fromJson(e)).toList();
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
    }

    throw UnimplementedError();
  }

  @override
  Future<List<MoviesResponseModel>> getAllAboutIndia() async {
    try {
      final response = await client.get('movies/about_india/');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => MoviesResponseModel.fromJson(e)).toList();
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
    }

    throw UnimplementedError();
  }

  @override
  Future<List<MoviesResponseModel>> getAllSoundtrack() async {
    try {
      final response = await client.get('soundtrack/all_soundtracks/');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => MoviesResponseModel.fromJson(e)).toList();
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
    }

    throw UnimplementedError();
  }
}
