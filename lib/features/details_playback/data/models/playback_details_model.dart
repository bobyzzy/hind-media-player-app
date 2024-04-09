// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hind_app/features/details_playback/domain/entities/playback_details_entity.dart';

typedef JSON = Map<String, dynamic>;

class PlaybackDetailsModel extends PlaybackDetailsEntity {
  PlaybackDetailsModel({
    required super.id,
    required super.title,
    required super.rating,
    required super.thumbnail,
    required super.year,
    required super.genreName,
  });

  factory PlaybackDetailsModel.fromJson(JSON json) {
    return PlaybackDetailsModel(
      id: json['id'],
      title: json['title'],
      rating: json['rating'],
      thumbnail: json['thumbnail'],
      year: json['year'],
      genreName: json['genre_name'],
    );
  }
}
