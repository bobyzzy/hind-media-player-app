// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_subscription_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSubscriptionResponseModelImpl
    _$$UserSubscriptionResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$UserSubscriptionResponseModelImpl(
          id: (json['id'] as num).toInt(),
          name: json['name'] as String,
          price: (json['price'] as num).toInt(),
          period: (json['period'] as num).toInt(),
          periodType: json['tariff_period_type'] as String,
          benefits: (json['benefits'] as List<dynamic>)
              .map((e) => BenefitsDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$UserSubscriptionResponseModelImplToJson(
        _$UserSubscriptionResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'period': instance.period,
      'tariff_period_type': instance.periodType,
      'benefits': instance.benefits,
    };

_$BenefitsDataModelImpl _$$BenefitsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BenefitsDataModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BenefitsDataModelImplToJson(
        _$BenefitsDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
