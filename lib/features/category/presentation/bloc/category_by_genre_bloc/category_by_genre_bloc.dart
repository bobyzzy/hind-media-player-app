import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/utils/enums.dart';
import '../../../domain/entities/category_data_entity.dart';
import '../../../domain/usecases/get_all_genre_data.dart';

part 'category_by_genre_bloc.freezed.dart';
part 'category_by_genre_event.dart';
part 'category_by_genre_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';
const MOVIES_TYPE = 'movies';
const SERIES_TYPE = 'series';
const SOUNTRACK = 'soundtrack';

const MOVIES_QUERY = 'all_movies';
const SERIES_QUERY = 'all_series';
const SOUNTRACK_QUERY = 'all_soundtracks';

class CategoryByGenreBloc
    extends Bloc<CategoryByGenreEvent, CategoryByGenreState> {
  final CategoryGetDataByGenre getAllGenreData;
  final InternetConnectionChecker connectionChecker;
  CategoryByGenreBloc(
      {required this.getAllGenreData, required this.connectionChecker})
      : super(CategoryByGenreState()) {
    on<_FetchDataEvent>(fetchData);
  }

  Future<void> fetchData(_FetchDataEvent event, Emitter emit) async {
    List<CategoryDataEntity> moviesAndSeries = [];
    emit(state.copyWith(status: Status.loading));
    if (await connectionChecker.hasConnection) {
      switch (event.pageID) {
        case '0':
          var failureOrMovies = await getAllGenreData(ParamsByGenre(
              type: MOVIES_TYPE, subtype: MOVIES_QUERY, id: event.id));
          var FailureOrSeries = await getAllGenreData(ParamsByGenre(
              type: SERIES_TYPE, subtype: SERIES_QUERY, id: event.id));

          failureOrMovies.fold(
            (error) => emit(state.copyWith(
              failure: error,
              status: Status.error,
              errorMassege: _failureMessage(error),
            )),
            (data) => moviesAndSeries.addAll(data),
          );

          FailureOrSeries.fold(
            (error) => emit(state.copyWith(
              failure: error,
              status: Status.loading,
              errorMassege: _failureMessage(error),
            )),
            (data) => moviesAndSeries.addAll(data),
          );

          if (moviesAndSeries.isNotEmpty) {
            moviesAndSeries.shuffle();
            emit(state.copyWith(
              status: Status.loaded,
              data: moviesAndSeries,
            ));
          }
          break;
        case '1':
          var failureOrData = await getAllGenreData(ParamsByGenre(
              type: MOVIES_TYPE, subtype: MOVIES_QUERY, id: event.id));
          failureOrData.fold(
            (error) => emit(state.copyWith(
              failure: error,
              status: Status.error,
              errorMassege: _failureMessage(error),
            )),
            (data) => emit(
              state.copyWith(data: data),
            ),
          );
          break;
        case '2':
          var failureOrData = await getAllGenreData(ParamsByGenre(
              type: SERIES_TYPE, subtype: SERIES_QUERY, id: event.id));

          failureOrData.fold(
            (error) => emit(state.copyWith(
              failure: error,
              status: Status.error,
              errorMassege: _failureMessage(error),
            )),
            (data) => emit(
              state.copyWith(data: data),
            ),
          );
        case '3':
          var failureOrData = await getAllGenreData(ParamsByGenre(
              type: SERIES_TYPE, subtype: SERIES_QUERY, id: event.id));

          failureOrData.fold(
            (error) => emit(state.copyWith(
              failure: error,
              status: Status.error,
              errorMassege: _failureMessage(error),
            )),
            (data) => emit(
              state.copyWith(data: data),
            ),
          );
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
