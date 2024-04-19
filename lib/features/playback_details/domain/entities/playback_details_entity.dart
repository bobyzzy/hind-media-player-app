// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class PlaybackDetailsEntity extends Equatable {
  final int id;
  final String title;
  final String rating;
  final String thumbnail;
  final int year;
  final String genreName;
  final List<SeasonsDataEntity>? seasons;

  PlaybackDetailsEntity({
    required this.id,
    required this.title,
    required this.rating,
    required this.thumbnail,
    required this.year,
    required this.genreName,
    required this.seasons,
  });

  @override
  List<Object?> get props => [id, title, rating, thumbnail, year, genreName];
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
  //TODO!: Попросить заполнить данные они не должны быть нулевыми
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
