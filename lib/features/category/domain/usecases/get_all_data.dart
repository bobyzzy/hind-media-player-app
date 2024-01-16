// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/usecases/usecase.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/repositories/category_repository.dart';

class CategoryGetAllData extends Usecase<List<CategoryDataEntity>, ParamsAllData> {
  CategoryRepository repository;
  CategoryGetAllData({required this.repository});

  @override
  Future<Either<Failure, List<CategoryDataEntity>>> call(ParamsAllData params) async {
    return await repository.getData(params.type,params.query);
  }
}

class ParamsAllData extends Equatable {
  final String type;
  final String query;

  ParamsAllData({required this.type, required this.query});
  @override
  List<Object?> get props => [type, query];
}
