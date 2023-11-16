// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'exif_model.g.dart';

@JsonSerializable()
class ExifModel {
  final String make;
  final String model;
  final String exposure_time;
  final String aperture;
  final String focal_length;
  final int iso;
  ExifModel({
    required this.make,
    required this.model,
    required this.exposure_time,
    required this.aperture,
    required this.focal_length,
    required this.iso,
  });

  factory ExifModel.fromJson(Map<String, dynamic> json) =>
      _$ExifModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExifModelToJson(this);
}
