// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_banners.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_get_me_entity.dart';
import 'package:hind_app/features/user_profile/domain/repositories/profile_repository.dart';

class GetUserMeUsecase extends Usecase<List<UserGetMeEntity>, NoParams> {
  final IProfileRepository repository;

  GetUserMeUsecase({required this.repository});
  @override
  Future<Either<Failure, List<UserGetMeEntity>>> call(NoParams params) async {
    return await repository.getMe();
  }
}
