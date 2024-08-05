// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SubscriptionResponseEntity extends Equatable {
  final int id;
  final int price;
  final String name;
  final int period;
  final String trafficType;
  final List<BenefitsDataEntity> benefits;
  SubscriptionResponseEntity({
    required this.id,
    required this.price,
    required this.name,
    required this.period,
    required this.trafficType,
    required this.benefits,
  });

  @override
  List<Object> get props {
    return [
      id,
      price,
      period,
      trafficType,
      benefits,
    ];
  }
}

class BenefitsDataEntity extends Equatable {
  final int id;
  final String name;
  BenefitsDataEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
