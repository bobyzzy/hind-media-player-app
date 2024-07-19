import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/home/domain/entities/banner_entity.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';

///[GetAllBanners] to get data about Banners of home screen
class GetAllBanners extends Usecase<List<BannerResponseEntity>, NoParams> {
  final HomeRepository repository;

  GetAllBanners({required this.repository});

  @override
  Future<Either<Failure, List<BannerResponseEntity>>> call(NoParams params) async {
    return await repository.getAllBanners();
  }
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}
