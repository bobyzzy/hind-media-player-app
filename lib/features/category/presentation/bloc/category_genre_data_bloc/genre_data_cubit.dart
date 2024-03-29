import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_data.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre_data.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_state.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';
const MOVIES_TYPE = 'movies';
const SERIES_TYPE = 'series';
const MOVIES_QUERY = 'all_movies';
const SERIES_QUERY = 'all_series';

class GenreDataCubit extends Cubit<GenreDataState> {
  final CategoryGetAllGenreData getByGenreData;
  final CategoryGetAllGenre getAllGenre;
  final CategoryGetAllData getAllData;
  final InternetConnectionChecker connectionChecker;
  GenreDataCubit(
      {required this.getByGenreData,
      required this.connectionChecker,
      required this.getAllGenre,
      required this.getAllData})
      : super(GenreDataEmpty());

  late var categoryGenres;
  late var series;
  late var movies;
  late List<CategoryDataEntity> moviesAndSeriesData;
  bool isActive = false;

  void loadGenreData() async {
    emit(GenreDataLoading());

    if (await connectionChecker.connectionStatus == InternetConnectionStatus.connected) {
      var failureOrMovie = await getAllData(ParamsAllData(type: MOVIES_TYPE, query: MOVIES_QUERY));
      var failureOrSeries = await getAllData(ParamsAllData(type: SERIES_TYPE, query: SERIES_QUERY));
      var failureOrGenre = await getAllGenre(ParamsGenre());

      //getting all genres
      failureOrGenre.fold((error) {
        emit(GenreDataError(_failureMessage(error)));
      }, (genres) {
        categoryGenres = genres;
      });

      //getting movies and series to show category start screen
      failureOrMovie.fold((error) {
        emit(GenreDataError(_failureMessage(error)));
      }, (movieData) {
        movieData.shuffle();
        moviesAndSeriesData = movieData;
        movies = movieData;
      });

      failureOrSeries.fold((error) {
        emit(GenreDataError(_failureMessage(error)));
      }, (seriesData) {
        series = seriesData;
        moviesAndSeriesData.addAll(seriesData);
        moviesAndSeriesData.shuffle();
      });

      if (moviesAndSeriesData.isNotEmpty && categoryGenres != null) {
        emit(GenreDataLoaded(
            genres: categoryGenres, movies: movies, series: series, allData: moviesAndSeriesData));
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
