// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hind_app/data/models/position_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  final String name;
  final String city;
  final String country;
  final PositionModel position;
  LocationModel({
    required this.name,
    required this.city,
    required this.country,
    required this.position,
  });
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
