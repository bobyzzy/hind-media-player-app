// ignore_for_file: invalid_annotation_target
import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_get_me_entity.dart';

part 'user_get_me_model.g.dart';
part 'user_get_me_model.freezed.dart';

@freezed
class UserGetMeModel with _$UserGetMeModel {
  const factory UserGetMeModel({
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String gender,
    required String? avatar,
  }) = _UserGetMeModel;

  factory UserGetMeModel.fromJson(JSON json) => _$UserGetMeModelFromJson(json);
}

class UserGetMeMapper {
  static UserGetMeEntity mapper(UserGetMeModel model) => UserGetMeEntity(
        phoneNumber: model.phoneNumber,
        gender: model.gender,
        avatar: model.avatar,
      );
}
