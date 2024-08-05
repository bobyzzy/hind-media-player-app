// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/type_def/type_defs.dart';

part 'user_favorites_delete_request_model.g.dart';
part 'user_favorites_delete_request_model.freezed.dart';

@freezed
class UserFavoritesDeleteRequestModel with _$UserFavoritesDeleteRequestModel {
  const factory UserFavoritesDeleteRequestModel({
    @JsonKey(name: 'file_category') required String fileCategory,
    @JsonKey(name: 'file_id') required int fileId,
  }) = _UserFavoritesDeleteRequestModel;

  factory UserFavoritesDeleteRequestModel.fromJson(JSON json) =>
      _$UserFavoritesDeleteRequestModelFromJson(json);
}
