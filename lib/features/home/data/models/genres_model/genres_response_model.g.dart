// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenresResponseModelImpl _$$GenresResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenresResponseModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenresResponseModelImplToJson(
        _$GenresResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
