// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';

class PlaybackDetailsModel extends PlaybackDetailsEntity {
  PlaybackDetailsModel({
    required super.id,
    required super.title,
    required super.rating,
    required super.thumbnail,
    required super.year,
    required super.genreName,
    required super.seasons,
  });

  factory PlaybackDetailsModel.fromJson(JSON json) {
    return PlaybackDetailsModel(
      id: json['id'],
      title: json['title'],
      rating: json['rating'],
      thumbnail: json['thumbnail'],
      year: json['year'],
      genreName: json['genre_name'],
      seasons: (json['seasons'] as List?) == null
          ? null
          : (json['seasons'] as List).map((e) => SeasonsDataModel.fromJson(e)).toList(),
    );
  }
}

class SeasonsDataModel extends SeasonsDataEntity {
  SeasonsDataModel({
    required super.number,
    required super.episodes,
  });

  factory SeasonsDataModel.fromJson(JSON json) {
    return SeasonsDataModel(
      number: json['number'],
      episodes: (json['episodes'] as List).map((e) => EpisodeModel.fromJson(e)).toList(),
    );
  }
}

class EpisodeModel extends EpisodesEntity {
  EpisodeModel({
    required super.number,
    required super.title,
    required super.file,
    required super.thumbnail,
  });

  factory EpisodeModel.fromJson(JSON json) {
    return EpisodeModel(
      number: json['number'],
      title: json['title'],
      file: json['file'],
      thumbnail: json['thumbnail'],
    );
  }
}
