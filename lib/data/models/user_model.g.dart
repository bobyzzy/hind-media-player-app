// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      updated_at: json['updated_at'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      portfolio_url: json['portfolio_url'] as String,
      bio: json['bio'] as String,
      location: json['location'] as String,
      total_likes: json['total_likes'] as int,
      total_photos: json['total_photos'] as int,
      total_collections: json['total_collections'] as int,
      instagram_username: json['instagram_username'] as String,
      twitter_username: json['twitter_username'] as String,
      links: LinksModel.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'updated_at': instance.updated_at,
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'portfolio_url': instance.portfolio_url,
      'bio': instance.bio,
      'location': instance.location,
      'total_likes': instance.total_likes,
      'total_photos': instance.total_photos,
      'total_collections': instance.total_collections,
      'instagram_username': instance.instagram_username,
      'twitter_username': instance.twitter_username,
      'links': instance.links,
    };
