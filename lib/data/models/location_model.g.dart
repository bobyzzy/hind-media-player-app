// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      name: json['name'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      position:
          PositionModel.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'country': instance.country,
      'position': instance.position,
    };
