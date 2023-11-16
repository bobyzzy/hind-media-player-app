// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'links_model.g.dart';

@JsonSerializable()
class LinksModel {
  final String self;
  final String html;
  final String download;
  LinksModel({
    required this.self,
    required this.html,
    required this.download,
  });

  factory LinksModel.fromJson(Map<String, dynamic> json) =>
      _$LinksModelFromJson(json);

  Map<String, dynamic> toJson() => _$LinksModelToJson(this);
}
