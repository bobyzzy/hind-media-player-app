
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre_data.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_by_genre_state.dart';
part 'category_by_genre_cubit.freezed.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';
const MOVIES_TYPE = 'movies';
const SERIES_TYPE = 'series';
const SOUNTRACK = 'soundtrack';

const MOVIES_QUERY = 'all_movies';
const SERIES_QUERY = 'all_series';
const SOUNTRACK_QUERY = 'all_soundtracks';

class CategoryByGenreCubit extends Cubit<CategoryByGenreState> {
  final CategoryGetDataByGenre getAllGenreData;
  final InternetConnectionChecker connectionChecker;
  CategoryByGenreCubit({required this.getAllGenreData, required this.connectionChecker})
      : super(CategoryByGenreState());

  Future<void> fetchData(String id, String pageID) async {
    List<CategoryDataEntity> moviesAndSeries = [];
    emit(state.copyWith(status: Status.loading));
    if (await connectionChecker.hasConnection) {
      switch (pageID) {
        case '0':
          var failureOrMovies = await getAllGenreData(
              ParamsByGenre(type: MOVIES_TYPE, subtype: MOVIES_QUERY, id: id));
          var FailureOrSeries = await getAllGenreData(
              ParamsByGenre(type: SERIES_TYPE, subtype: SERIES_QUERY, id: id));

          failureOrMovies.fold(
              (error) => emit(state.copyWith(
                  failure: error, status: Status.error, errorMassege: _failureMessage(error))),
              (data) => moviesAndSeries.addAll(data));

          FailureOrSeries.fold(
              (error) => emit(state.copyWith(
                  failure: error, status: Status.loading, errorMassege: _failureMessage(error))),
              (data) => moviesAndSeries.addAll(data));

          if (moviesAndSeries.isNotEmpty) {
            moviesAndSeries.shuffle();
            emit(state.copyWith(status: Status.loaded, data: moviesAndSeries));
          }
          break;
        case '1':
          var failureOrData = await getAllGenreData(
              ParamsByGenre(type: MOVIES_TYPE, subtype: MOVIES_QUERY, id: id));
          failureOrData.fold(
              (error) => emit(state.copyWith(
                  failure: error, status: Status.error, errorMassege: _failureMessage(error))),
              (data) => emit(state.copyWith(data: data)));
          break;
        case '2':
          var failureOrData = await getAllGenreData(
              ParamsByGenre(type: SERIES_TYPE, subtype: SERIES_QUERY, id: id));

          failureOrData.fold(
              (error) => emit(state.copyWith(
                  failure: error, status: Status.error, errorMassege: _failureMessage(error))),
              (data) => emit(state.copyWith(data: data)));
        case '3':
          var failureOrData = await getAllGenreData(
              ParamsByGenre(type: SERIES_TYPE, subtype: SERIES_QUERY, id: id));

          failureOrData.fold(
              (error) => emit(state.copyWith(
                  failure: error, status: Status.error, errorMassege: _failureMessage(error))),
              (data) => emit(state.copyWith(data: data)));
        default:
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
