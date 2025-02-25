part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    @Default(Status.initial) Status status,
    @Default([]) List<SearchDataEntity> movies,
    @Default(UknownFailue()) Failure failure,
    @Default('') String errorMessage,
  }) = _SearchState;
}
