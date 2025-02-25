import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/category_data_entity.dart';
import '../../../domain/entities/category_genre_entity.dart';
import '../../../domain/usecases/get_all_data.dart';
import '../../../domain/usecases/get_all_genre.dart';
import '../../../domain/usecases/get_all_genre_data.dart';
import '../../../domain/usecases/get_data_by_type.dart';

part 'genre_data_event.dart';
part 'genre_data_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';
const SERIES_SUBTYPE = 'all_series';
const SOUNTRACK_SUBTYPE = 'all_soundtracks';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryGetDataByGenre getByGenreData;
  final CategoryGetAllGenre getAllGenre;
  final CategoryGetAllData getAllData;
  final GetDataByType getDataByType;
  final InternetConnectionChecker connectionChecker;
  CategoryBloc(
      {required this.getByGenreData,
      required this.connectionChecker,
      required this.getAllGenre,
      required this.getAllData,
      required this.getDataByType})
      : super(GenreDataEmpty()) {
    on<LoadCategoryDataEvent>(loadCategoryData);
  }

  late var categoryGenres;
  late List<CategoryDataEntity> series;
  late List<CategoryDataEntity> movies;
  late List<CategoryDataEntity> aboutIndia;
  late List<CategoryDataEntity> tvShou;

  late List<CategoryDataEntity> soundtrack;
  late List<CategoryDataEntity> allData;

  Future<void> loadCategoryData(LoadCategoryDataEvent event, Emitter emit) async {
    emit(CategoryDataLoading());

    if (await connectionChecker.connectionStatus ==
        InternetConnectionStatus.disconnected) {
      emit(CategoryConnectionError());
    }

    if (await connectionChecker.connectionStatus ==
        InternetConnectionStatus.connected) {
      var failureOrGenre = await getAllGenre(ParamsGenre());
      var failureOrAllData =
          await getAllData(ParamsAllData(type: 'movies', query: 'movies'));
      var failureOrMovies = await getDataByType(
          ParamsType(type: 'movies', subtype: 'all_movies'));
      var faiureOrSeries = await getDataByType(
          ParamsType(type: 'series', subtype: 'all_series'));
      var failOrTvShou = await getDataByType(
          ParamsType(type: 'tv_show', subtype: 'all_tvshows'));

      var failureOrAboutIndia = await getDataByType(
          ParamsType(type: 'movies', subtype: 'about_india'));
      var failureOrSoundtrack = await getDataByType(
          ParamsType(type: 'soundtrack', subtype: 'all_soundtracks'));

      //getting all genres
      failureOrGenre.fold((error) {
        emit(CategoryDataError(_failureMessage(error)));
      }, (genres) => categoryGenres = genres);

      //getting all data
      failureOrAllData.fold((error) {
        emit(CategoryDataError(_failureMessage(error)));
      }, (data) => allData = data);

      //getting data by type
      failureOrMovies.fold((error) {
        emit(CategoryDataError(_failureMessage(error)));
      }, (data) => movies = data);

      faiureOrSeries.fold(
          (error) => emit(CategoryDataError(_failureMessage(error))),
          (data) => series = data);

      failureOrAboutIndia.fold(
          (error) => emit(CategoryDataError(_failureMessage(error))),
          (data) => aboutIndia = data);

      failureOrSoundtrack.fold(
          (error) => print(error), (data) => soundtrack = data);
      failOrTvShou.fold((error) => null, (data) => tvShou = data);

      if (allData.isNotEmpty && categoryGenres != null) {
        emit(CategoryDataLoaded(
          allData: allData,
          genres: categoryGenres,
          movies: movies,
          series: series,
          aboutIndia: aboutIndia,
          tvShou: tvShou,
          soundTrack: soundtrack,
        ));
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
