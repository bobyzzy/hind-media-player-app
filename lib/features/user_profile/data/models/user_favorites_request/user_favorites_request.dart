// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/type_def/type_defs.dart';

part 'user_favorites_request.g.dart';
part 'user_favorites_request.freezed.dart';

@freezed
class UserFavoritesRequestModel with _$UserFavoritesRequestModel {
  const factory UserFavoritesRequestModel({
    @JsonKey(name: 'file_category') required String fileCategory,
    @JsonKey(name: 'file_id') required int fileId,
  }) = _UserFavoritesRequestModel;

  factory UserFavoritesRequestModel.fromJson(JSON json) =>
      _$UserFavoritesRequestModelFromJson(json);
}
