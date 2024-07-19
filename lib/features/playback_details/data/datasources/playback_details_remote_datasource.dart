// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:hind_app/core/errors/exeptions.dart';

import 'package:hind_app/features/playback_details/data/models/playback_details_response_model.dart';

abstract class PlaybackDetailsRemoteDatasource {
  Future<PlaybackDetailsResponseModel> getDetails(String id, String type);
}

class PlaybackDetailsRemoteDatasourceImpl implements PlaybackDetailsRemoteDatasource {
  final Dio client;

  PlaybackDetailsRemoteDatasourceImpl({required this.client});

  @override
  Future<PlaybackDetailsResponseModel> getDetails(String id, String type) async {
    if (type == 'movie') {
      try {
        final response = await client.get("movies/all_movies/$id");
        if (response.statusCode == 200) {
          final data = response.data;

          return PlaybackDetailsResponseModel.fromJson(data);
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
    } else if (type == 'series') {
      try {
        final response = await client.get("series/all_series/$id");
        if (response.statusCode == 200) {
          final data = response.data;
          return PlaybackDetailsResponseModel.fromJson(data);
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
    } else if (type == 'tv_show') {
      try {
        final response = await client.get("tv_show/all_tvshows/$id");
        if (response.statusCode == 200) {
          final data = response.data;
          return PlaybackDetailsResponseModel.fromJson(data);
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
    }else if (type == 'soundtrack') {
      try {
        final response = await client.get("soundtrack/all_soundtracks/$id");
        if (response.statusCode == 200) {
          final data = response.data;
          return PlaybackDetailsResponseModel.fromJson(data);
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
    }
    throw UnimplementedError();
  }
}
