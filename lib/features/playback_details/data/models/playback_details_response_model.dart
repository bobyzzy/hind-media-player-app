// ignore_for_file: public_member_api_docs, sort_constructors_first, invalid_annotation_target
import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'playback_details_response_model.g.dart';
part 'playback_details_response_model.freezed.dart';

@freezed
class PlaybackDetailsResponseModel with _$PlaybackDetailsResponseModel {
  const factory PlaybackDetailsResponseModel({
    required int id,
    required String title,
    required String thumbnail,
    String? duration,
    String? rating,
    int? year,
    @JsonKey(name: 'genre_name') required String? genreName,
    @JsonKey(name: 'short_description') String? description,
    List<SeasonsDataModel>? seasons,
    required List<PlaybackTrailersDataModel>? trailers,
  }) = _PlaybackDetailsResponseModel;

  factory PlaybackDetailsResponseModel.fromJson(JSON json) =>
      _$PlaybackDetailsResponseModelFromJson(json);
}

@freezed
class SeasonsDataModel with _$SeasonsDataModel {
  const factory SeasonsDataModel({
    required int number,
    List<EpisodeModel>? episodes,
  }) = _SeasonsDataModel;

  factory SeasonsDataModel.fromJson(JSON json) => _$SeasonsDataModelFromJson(json);
}

@freezed
class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel({
    required int number,
    required String title,
    String? file,
    String? thumbnail,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(JSON json) => _$EpisodeModelFromJson(json);
}

@freezed
class PlaybackTrailersDataModel with _$PlaybackTrailersDataModel {
  const factory PlaybackTrailersDataModel({
    required String url,
    required String title,
  }) = _PlaybackTrailersDataModel;

  factory PlaybackTrailersDataModel.fromJson(JSON json) =>
      _$PlaybackTrailersDataModelFromJson(json);
}

class PlaybackDetailsMapper {
  static PlaybackDetailsResponseEntity mapper(PlaybackDetailsResponseModel model) =>
      PlaybackDetailsResponseEntity(
        id: model.id,
        title: model.title,
        rating: model.rating,
        thumbnail: model.thumbnail,
        year: model.year,
        genreName: model.genreName,
        seasons: model.seasons?.map((e) => _seasonsMapper(e)).toList(),
        description: model.description,
        duration: model.duration,
        trailers: model.trailers?.map((e) => _trailersMapper(e)).toList(),
      );

  static SeasonsDataEntity _seasonsMapper(SeasonsDataModel model) => SeasonsDataEntity(
        number: model.number,
        episodes: model.episodes?.map((e) => _episodesMapper(e)).toList(),
      );

  static EpisodesEntity _episodesMapper(EpisodeModel model) => EpisodesEntity(
      number: model.number, title: model.title, file: model.file, thumbnail: model.thumbnail);

  static PlaybackTrailersDataEntity _trailersMapper(PlaybackTrailersDataModel model) =>
      PlaybackTrailersDataEntity(url: model.url, title: model.title);
}


// class PlaybackDetailsModel extends PlaybackDetailsResponseEntity {
//   PlaybackDetailsModel({
//     required super.id,
//     required super.title,
//     required super.rating,
//     required super.thumbnail,
//     required super.year,
//     required super.genreName,
//     required super.seasons,
//   });

//   factory PlaybackDetailsModel.fromJson(JSON json) {
//     return PlaybackDetailsModel(
//       id: json['id'],
//       title: json['title'],
//       rating: json['rating'],
//       thumbnail: json['thumbnail'],
//       year: json['year'],
//       genreName: json['genre_name'],
//       seasons: (json['seasons'] as List?) == null
//           ? null
//           : (json['seasons'] as List).map((e) => SeasonsDataModel.fromJson(e)).toList(),
//     );
//   }
// }

// class SeasonsDataModel extends SeasonsDataEntity {
//   SeasonsDataModel({
//     required super.number,
//     required super.episodes,
//   });

//   factory SeasonsDataModel.fromJson(JSON json) {
//     return SeasonsDataModel(
//       number: json['number'],
//       episodes: (json['episodes'] as List).map((e) => EpisodeModel.fromJson(e)).toList(),
//     );
//   }
// }

// class EpisodeModel extends EpisodesEntity {
//   EpisodeModel({
//     required super.number,
//     required super.title,
//     required super.file,
//     required super.thumbnail,
//   });

//   factory EpisodeModel.fromJson(JSON json) {
//     return EpisodeModel(
//       number: json['number'],
//       title: json['title'],
//       file: json['file'],
//       thumbnail: json['thumbnail'],
//     );
//   }
// }
