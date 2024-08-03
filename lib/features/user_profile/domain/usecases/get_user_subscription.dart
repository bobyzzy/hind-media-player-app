// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_banners.dart';
import 'package:hind_app/features/user_profile/domain/entities/subscription_get_response_entity.dart';
import 'package:hind_app/features/user_profile/domain/repositories/profile_repository.dart';

class GetUserSubscription extends Usecase<List<SubscriptionResponseEntity>, NoParams> {
  final IProfileRepository repository;

  GetUserSubscription({required this.repository});
  @override
  Future<Either<Failure, List<SubscriptionResponseEntity>>> call(NoParams params) async {
    return await repository.getSubscription();
  }
}
