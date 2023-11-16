// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'collection_model.g.dart';

@JsonSerializable()
class CollectionModel {
  final int id;
  final String title;
  final String published_at;
  final String last_collected_at;
  final String updated_at;
  final dynamic cover_photo;
  final dynamic user;

  CollectionModel({
    required this.id,
    required this.title,
    required this.published_at,
    required this.last_collected_at,
    required this.updated_at,
    required this.cover_photo,
    required this.user,
  });
  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionModelToJson(this);
}
