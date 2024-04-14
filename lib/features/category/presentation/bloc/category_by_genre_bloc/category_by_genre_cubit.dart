import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre_data.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_state.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';
const MOVIES_TYPE = 'movies';
const SERIES_TYPE = 'series';
const MOVIES_QUERY = 'all_movies';
const SERIES_QUERY = 'all_series';

class CategoryByGenreCubit extends Cubit<CategoryByGenreState> {
  final CategoryGetDataByGenre getAllGenreData;
  final InternetConnectionChecker connectionChecker;
  CategoryByGenreCubit({required this.getAllGenreData, required this.connectionChecker})
      : super(CategoryByGenreEmpty());

  Future<void> fetchData(String id, String pageID) async {
    List<CategoryDataEntity> moviesAndSeries = [];
    emit(CategoryByGenreLoading());
    if (await connectionChecker.hasConnection) {
      switch (pageID) {
        case '0':
          var failureOrMovies = await getAllGenreData(
              ParamsByGenre(type: MOVIES_TYPE, subtype: MOVIES_QUERY, id: id));
          var FailureOrSeries = await getAllGenreData(
              ParamsByGenre(type: SERIES_TYPE, subtype: SERIES_QUERY, id: id));

          failureOrMovies.fold((error) => emit(CategoryByGenreError(error: _failureMessage(error))),
              (data) => moviesAndSeries.addAll(data));

          FailureOrSeries.fold((error) => emit(CategoryByGenreError(error: _failureMessage(error))),
              (data) => moviesAndSeries.addAll(data));

          if (moviesAndSeries.isNotEmpty) {
            moviesAndSeries.shuffle();
            emit(CategoryByGenreLoaded(data: moviesAndSeries));
          }
          break;
        case '1':
          var failureOrData = await getAllGenreData(
              ParamsByGenre(type: MOVIES_TYPE, subtype: MOVIES_QUERY, id: id));
          failureOrData.fold((error) => emit(CategoryByGenreError(error: _failureMessage(error))),
              (data) => emit(CategoryByGenreLoaded(data: data)));
          break;
        case '2':
          var failureOrData = await getAllGenreData(
              ParamsByGenre(type: SERIES_TYPE, subtype: SERIES_QUERY, id: id));

          failureOrData.fold((error) => emit(CategoryByGenreError(error: _failureMessage(error))),
              (data) => emit(CategoryByGenreLoaded(data: data)));
        default:
          throw ServerFailure();
      }
    }
  }

  String _failureMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
