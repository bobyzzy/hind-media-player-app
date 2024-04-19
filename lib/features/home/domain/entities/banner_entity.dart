// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class BannerEntity extends Equatable {
  final int id;
  final int movieOrSerisId;
  final String bannerType;
  final String thumbnail;

  BannerEntity({
    required this.id,
    required this.movieOrSerisId,
    required this.bannerType,
    required this.thumbnail,
  });

  @override
  List<Object?> get props => [
        id,
        movieOrSerisId,
        bannerType,
        thumbnail,
      ];
}
