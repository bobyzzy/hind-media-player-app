// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class BannerResponseEntity extends Equatable {
  final int id;
  final int movieOrSeriesId;
  final String bannerType;
  final String thumbnail;

  BannerResponseEntity({
    required this.id,
    required this.movieOrSeriesId,
    required this.bannerType,
    required this.thumbnail,
  });

  @override
  List<Object?> get props => [
        id,
        movieOrSeriesId,
        bannerType,
        thumbnail,
      ];
}
