import 'dart:convert';

import 'package:hind_app/core/constants/constants.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:hind_app/features/home/data/models/genres_model.dart';
import 'package:hind_app/features/home/data/models/movies_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  Future<List<MoviesModel>> getLastMoviesFromCache();
  Future<List<GenresModel>> getLastGenresFromCache();

  Future<void> genresToCache(List<GenresModel> genresModel);
  Future<void> moviesToCache(List<MoviesModel> moviesModel);
}

class LocalDataSourcesImpl extends LocalDataSource {
  SharedPreferences sharedPreferences;

  LocalDataSourcesImpl({required this.sharedPreferences});

  @override
  Future<void> genresToCache(List<GenresModel> genresModel) {
    final List<String> jsonGenresList = genresModel.map((e) => json.encode(e.toJson())).toList();

    sharedPreferences.setStringList(Constants.GENRE_CACHE, jsonGenresList);
    print('Genres to write Cache: ${jsonGenresList.length}');
    return Future.value(jsonGenresList);
  }

  @override
  Future<List<GenresModel>> getLastGenresFromCache() {
    final genres = sharedPreferences.getStringList(Constants.GENRE_CACHE);
    if (genres == null || genres.isEmpty) {
      throw CacheExeption();
    } else {
      print('Get genres from Cache: ${genres.length}');
      return Future.value(genres.map((e) => GenresModel.fromJson(json.decode(e))).toList());
    }
  }

  @override
  Future<List<MoviesModel>> getLastMoviesFromCache() {
    final movies = sharedPreferences.getStringList(Constants.MOVIE_CACHE);

    if (movies == null || movies.isEmpty) {
      throw CacheExeption();
    } else {
      print('Get movies from Cache: ${movies.length}');

      return Future.value(movies.map((e) => MoviesModel.fromJson(json.decode(e))).toList());
    }
  }

  Future<void> moviesToCache(List<MoviesModel> moviesModel) {
    final List<String> jsonMovies = moviesModel.map((e) => json.encode(e.toJson())).toList();

    print(jsonMovies.length);
    //надо проверить
    sharedPreferences.setStringList(Constants.MOVIE_CACHE, jsonMovies);
    print('Movies to write Cache: ${jsonMovies.length}');

    return Future.value(jsonMovies);
  }
}
