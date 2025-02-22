// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PlaybackDetailsResponseEntity extends Equatable {
  final int id;
  final String title;
  final String thumbnail;
  final String category;
  final String? duration;
  final String? rating;
  final int? year;
  final String? genreName;
  final List<SeasonsDataEntity>? seasons;
  final String? description;
  final List<PlaybackTrailersDataEntity>? trailers;

  const PlaybackDetailsResponseEntity({
    required this.id,
    required this.title,
    required this.rating,
    required this.category,
    required this.thumbnail,
    required this.year,
    required this.genreName,
    required this.seasons,
    required this.description,
    required this.duration,
    required this.trailers,
  });

  @override
  List<Object?> get props =>
      [id, title, rating, thumbnail, year, genreName, duration];
}

class SeasonsDataEntity extends Equatable {
  final int number;
  final List<EpisodesEntity>? episodes;

  SeasonsDataEntity({
    required this.number,
    required this.episodes,
  });

  @override
  List<Object?> get props => [number, episodes];
}

class EpisodesEntity extends Equatable {
  final int number;
  final String title;
  final String? file;
  final String? thumbnail;
  EpisodesEntity({
    required this.number,
    required this.title,
    required this.file,
    required this.thumbnail,
  });

  @override
  List<Object?> get props => [number, title, file, thumbnail];
}

class PlaybackTrailersDataEntity extends Equatable {
  final String? url;
  final String title;
  PlaybackTrailersDataEntity({required this.url, required this.title});

  @override
  List<Object> get props => [url ?? '', title];
}
