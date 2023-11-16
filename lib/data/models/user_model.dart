// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:hind_app/data/models/links_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String updated_at;
  final String username;
  final String name;
  final String first_name;
  final String last_name;
  final String portfolio_url;
  final String bio;
  final String location;
  final int total_likes;
  final int total_photos;
  final int total_collections;
  final String instagram_username;
  final String twitter_username;

  final LinksModel links;
  UserModel({
    required this.id,
    required this.updated_at,
    required this.username,
    required this.name,
    required this.first_name,
    required this.last_name,
    required this.portfolio_url,
    required this.bio,
    required this.location,
    required this.total_likes,
    required this.total_photos,
    required this.total_collections,
    required this.instagram_username,
    required this.twitter_username,
    required this.links,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
