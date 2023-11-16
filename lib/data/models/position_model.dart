// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'position_model.g.dart';

@JsonSerializable()
class PositionModel {
  final int latitude;
  final int longitude;
  PositionModel({
    required this.latitude,
    required this.longitude,
  });

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);

  Map<String, dynamic> toJson() => _$PositionModelToJson(this);
}
