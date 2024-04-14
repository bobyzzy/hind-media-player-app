// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:hind_app/core/constants/constants.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:http/http.dart' as http;

import 'package:hind_app/features/details_playback/data/models/playback_details_model.dart';

abstract class PlaybackDetailsRemoteDatasource {
  Future<PlaybackDetailsModel> getDetails(String id);
}

class PlaybackDetailsRemoteDatasourceImpl implements PlaybackDetailsRemoteDatasource {
  final http.Client client;

  PlaybackDetailsRemoteDatasourceImpl({required this.client});

  @override
  Future<PlaybackDetailsModel> getDetails(String id) async {
    final response = await client.get(Uri.parse(Constants.API_CLIENT + Constants.PATH_MOVIE + id));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      return PlaybackDetailsModel.fromJson(data);
    } else
      throw ServerExeption();
  }
}
