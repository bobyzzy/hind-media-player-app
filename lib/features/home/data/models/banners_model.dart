import 'package:hind_app/features/home/domain/entities/banner_entity.dart';

class BannerModel extends BannerEntity {
  BannerModel({
    required super.id,
    required super.movieOrSerisId,
    required super.bannerType,
    required super.thumbnail,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      movieOrSerisId: json['movie_or_series_id'],
      bannerType: json['banner_type'],
      thumbnail: json['image'],
    );
  }
}
