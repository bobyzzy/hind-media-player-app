import 'package:dartz/dartz.dart';
import 'package:hind_app/core/errors/failure.dart';

abstract class Usecase<Type> {
  Future<Either<Failure, Type>> call();
}
