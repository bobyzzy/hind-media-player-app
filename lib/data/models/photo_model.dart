// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:hind_app/data/models/collection_model.dart';
import 'package:hind_app/data/models/exif_model.dart';
import 'package:hind_app/data/models/links_model.dart';
import 'package:hind_app/data/models/location_model.dart';
import 'package:hind_app/data/models/urls_model.dart';
import 'package:hind_app/data/models/user_model.dart';

part 'photo_model.g.dart';

@JsonSerializable()
class PhotoModel {
  final int width;
  final int height;
  final UrlsModel urls;
  PhotoModel({
    required this.width,
    required this.height,
    required this.urls,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoModelToJson(this);
}
