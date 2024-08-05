// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hind_app/features/user_profile/data/models/user_favorites_delete/user_favorites_delete_request_model.dart';

class UserFavoritesDeleteRequestEntity extends Equatable {
  final String fileCategory;
  final int fileId;
  UserFavoritesDeleteRequestEntity({
    required this.fileCategory,
    required this.fileId,
  });

  @override
  List<Object> get props => [fileCategory, fileId];

  UserFavoritesDeleteRequestModel toModel() => UserFavoritesDeleteRequestModel(
        fileCategory: fileCategory,
        fileId: fileId,
      );
}
