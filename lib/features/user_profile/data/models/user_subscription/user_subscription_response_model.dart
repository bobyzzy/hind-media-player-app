// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/type_def/type_defs.dart';
import 'package:hind_app/features/user_profile/domain/entities/subscription_get_response_entity.dart';

part 'user_subscription_response_model.g.dart';
part 'user_subscription_response_model.freezed.dart';

@freezed
class UserSubscriptionResponseModel with _$UserSubscriptionResponseModel {
  const factory UserSubscriptionResponseModel({
    required int id,
    required String name,
    required int price,
    required int period,
    @JsonKey(name: 'tariff_period_type') required String periodType,
    required List<BenefitsDataModel> benefits,
  }) = _UserSubscriptionResponseModel;

  factory UserSubscriptionResponseModel.fromJson(JSON json) =>
      _$UserSubscriptionResponseModelFromJson(json);
}

@freezed
class BenefitsDataModel with _$BenefitsDataModel {
  const factory BenefitsDataModel({
    required int id,
    required String name,
  }) = _BenefitsDataModel;

  factory BenefitsDataModel.fromJson(JSON json) => _$BenefitsDataModelFromJson(json);
}

class UserSubscriptionMapper {
  static SubscriptionResponseEntity mapper(UserSubscriptionResponseModel model) =>
      SubscriptionResponseEntity(
        id: model.id,
        name: model.name,
        price: model.price,
        period: model.period,
        trafficType: model.periodType,
        benefits: model.benefits.map((e) => mapperBenefits(e)).toList(),
      );

  static BenefitsDataEntity mapperBenefits(BenefitsDataModel model) =>
      BenefitsDataEntity(id: model.id, name: model.name);
}
