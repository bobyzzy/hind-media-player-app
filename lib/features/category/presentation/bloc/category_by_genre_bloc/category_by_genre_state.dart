// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';

abstract class CategoryByGenreState extends Equatable {}

class CategoryByGenreEmpty extends CategoryByGenreState {
  @override
  List<Object?> get props => [];
}

class CategoryByGenreLoading extends CategoryByGenreState {
  @override
  List<Object?> get props => [];
}

class CategoryByGenreLoaded extends CategoryByGenreState {
  final List<CategoryDataEntity> data;

  CategoryByGenreLoaded({required this.data});

  @override
  List<Object?> get props => [data];
}

class CategoryByGenreConnectionError extends CategoryByGenreState {
  @override
  List<Object?> get props => [];
}

class CategoryByGenreError extends CategoryByGenreState {
  final String error;

  CategoryByGenreError({required this.error});
  @override
  List<Object?> get props => [error];
}
