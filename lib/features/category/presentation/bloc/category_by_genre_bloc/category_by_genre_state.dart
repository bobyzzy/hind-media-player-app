// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'category_by_genre_bloc.dart';

@freezed
class CategoryByGenreState with _$CategoryByGenreState {
  const factory CategoryByGenreState({
    @Default(Status.initial) Status status,
    @Default(UknownFailue()) Failure failure,
    @Default([]) List<CategoryDataEntity> data,
    @Default('') String errorMassege,
  }) = _CategoryByGenreState;
}


// class CategoryByGenreEmpty extends CategoryByGenreState {
//   @override
//   List<Object?> get props => [];
// }

// class CategoryByGenreLoading extends CategoryByGenreState {
//   @override
//   List<Object?> get props => [];
// }

// class CategoryByGenreLoaded extends CategoryByGenreState {
//   final List<CategoryDataEntity> data;

//   CategoryByGenreLoaded({required this.data});

//   @override
//   List<Object?> get props => [data];
// }

// class CategoryByGenreConnectionError extends CategoryByGenreState {
//   @override
//   List<Object?> get props => [];
// }

// class CategoryByGenreError extends CategoryByGenreState {
//   final String error;

//   CategoryByGenreError({required this.error});
//   @override
//   List<Object?> get props => [error];
// }
