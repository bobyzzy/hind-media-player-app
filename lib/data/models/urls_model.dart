// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'urls_model.g.dart';

@JsonSerializable()
class UrlsModel {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  UrlsModel({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  factory UrlsModel.fromJson(Map<String, dynamic> json) =>
      _$UrlsModelFromJson(json);

  Map<String, dynamic> toJson() => _$UrlsModelToJson(this);
}
