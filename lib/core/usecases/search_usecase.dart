import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';

abstract class SearchUseCase<Type,Params> {
  Future<Either<Failure, Type>> call(Params params);
}
