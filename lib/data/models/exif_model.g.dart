// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exif_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExifModel _$ExifModelFromJson(Map<String, dynamic> json) => ExifModel(
      make: json['make'] as String,
      model: json['model'] as String,
      exposure_time: json['exposure_time'] as String,
      aperture: json['aperture'] as String,
      focal_length: json['focal_length'] as String,
      iso: json['iso'] as int,
    );

Map<String, dynamic> _$ExifModelToJson(ExifModel instance) => <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'exposure_time': instance.exposure_time,
      'aperture': instance.aperture,
      'focal_length': instance.focal_length,
      'iso': instance.iso,
    };
