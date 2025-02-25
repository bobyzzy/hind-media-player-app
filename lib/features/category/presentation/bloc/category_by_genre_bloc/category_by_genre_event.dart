part of 'category_by_genre_bloc.dart';

@freezed
class CategoryByGenreEvent with _$CategoryByGenreEvent {
  const factory CategoryByGenreEvent.fetchData({
    required String id,
    required String pageID,
  }) = _FetchDataEvent;
}
