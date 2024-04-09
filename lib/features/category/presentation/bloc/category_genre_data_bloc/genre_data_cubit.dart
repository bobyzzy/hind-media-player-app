import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/category/domain/entities/category_data_entity.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_data.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre_data.dart';
import 'package:hind_app/features/category/domain/usecases/get_data_by_type.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_state.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';
const MOVIES_TYPE = 'movies';
const SERIES_TYPE = 'series';
const MOVIES_QUERY = 'all_movies';
const SERIES_QUERY = 'all_series';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryGetDataByGenre getByGenreData;
  final CategoryGetAllGenre getAllGenre;
  final CategoryGetAllData getAllData;
  final GetDataByType getDataByType;
  final InternetConnectionChecker connectionChecker;
  CategoryCubit(
      {required this.getByGenreData,
      required this.connectionChecker,
      required this.getAllGenre,
      required this.getAllData,
      required this.getDataByType})
      : super(GenreDataEmpty());

  late var categoryGenres;
  late List<CategoryDataEntity> series;
  late List<CategoryDataEntity> movies;
  late List<CategoryDataEntity> allData;
  bool isActive = false;

  Future<void> loadCategoryData() async {
    emit(CategoryDataLoading());

    if (await connectionChecker.connectionStatus == InternetConnectionStatus.disconnected) {
      emit(CategoryConnectionError());
    }

    if (await connectionChecker.connectionStatus == InternetConnectionStatus.connected) {
      var failureOrAllData =
          await getAllData(ParamsAllData(type: MOVIES_TYPE, query: MOVIES_QUERY));
      var failureOrGenre = await getAllGenre(ParamsGenre());
      var failureOrMovies =
          await getDataByType(ParamsType(type: MOVIES_TYPE, subtype: MOVIES_QUERY));
      var faiureOrSeries =
          await getDataByType(ParamsType(type: SERIES_TYPE, subtype: SERIES_QUERY));

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

      faiureOrSeries.fold((error) {
        emit(CategoryDataError(_failureMessage(error)));
      }, (data) => series = data);

      if (allData.isNotEmpty && categoryGenres != null) {
        emit(CategoryDataLoaded(
            genres: categoryGenres, movies: movies, series: series, allData: allData));
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
