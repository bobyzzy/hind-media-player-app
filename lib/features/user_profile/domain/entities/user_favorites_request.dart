// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hind_app/features/user_profile/data/models/user_favorites_request/user_favorites_request.dart';

class UserFavoritesRequestEntity extends Equatable {
  final String fileCategory;
  final int fileId;

  UserFavoritesRequestEntity({required this.fileCategory, required this.fileId});

  @override
  List<Object> get props => [fileCategory, fileId];

  UserFavoritesRequestModel toModel() =>
      UserFavoritesRequestModel(fileCategory: fileCategory, fileId: fileId);
}
