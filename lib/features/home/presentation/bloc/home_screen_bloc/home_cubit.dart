import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_banners.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_movies.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_series.dart';
import 'package:hind_app/features/home/presentation/bloc/home_screen_bloc/home_state.dart';

//TODO!:ВЫВЕСТИ КОНСТАНУ В ОБЩИЙ ФАЙЛ
const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';

class HomeCubit extends Cubit<HomePageState> {
  final GetAllMovies getAllMovies;
  final GetAllSeries getAllSeries;
  final GetAllBanners getAllBanners;
  final InternetConnectionChecker connectionChecker;
  HomeCubit({
    required this.getAllMovies,
    required this.getAllSeries,
    required this.connectionChecker,
    required this.getAllBanners,
  }) : super(HomePageEmpty());

  Future<void> init() async {
    emit(HomePageLoading());

    late var movies;
    late var series;
    late var banners;

    connectionChecker.onStatusChange.listen((event) async {
      if (event == InternetConnectionStatus.connected) {
        var failureOrMovie = await getAllMovies(ParamsAllMovies());
        var failurOrSeries = await getAllSeries(ParamsAllSeries());
        var failureOrBanners = await getAllBanners(NoParams());
        failureOrMovie.fold((error) {
          emit(HomePageError(_failureMessage(error)));
        }, (data) {
          movies = data;
          print('MOVIES LOADED:$data');
        });
        failurOrSeries.fold((error) {
          emit(HomePageError(_failureMessage(error)));
        }, (data) {
          series = data;
          print('SERIES LOADED:$series');
        });

        failureOrBanners.fold((error) => emit(HomePageError(_failureMessage(error))), (data) {
          banners = data;
          print('BANNERS LOADED: $banners');
        });

        if (movies != null && series != null && banners != null) {
          emit(HomePageMoviesLoaded(movies, series, banners));
        }
      } else if (event == InternetConnectionStatus.disconnected) {
        emit(HomePageConnectionError());
      }
    });
  }

  Future<void> loadData() async {
    late var movies;
    late var series;
    late var banners;
    emit(HomePageLoading());

    if (await connectionChecker.connectionStatus == InternetConnectionStatus.connected) {
      var failureOrMovie = await getAllMovies(ParamsAllMovies());
      var failurOrSeries = await getAllSeries(ParamsAllSeries());
      var failureOrBanners = await getAllBanners(NoParams());
      failureOrMovie.fold((error) {
        emit(HomePageError(_failureMessage(error)));
      }, (data) {
        movies = data;
        print('MOVIES IS LOADED:$data');
      });
      failurOrSeries.fold((error) {
        emit(HomePageError(_failureMessage(error)));
      }, (data) {
        series = data;
        print('SERIES IS LOADED:$series');
      });

      failureOrBanners.fold((error) => emit(HomePageError(_failureMessage(error))), (data) {
        banners = data;
        print('BANNERS LOADED: $banners');
      });

      if (movies != null && series != null && banners != null) {
        emit(HomePageMoviesLoaded(movies, series, banners));
      }
    } else if (connectionChecker.connectionStatus == InternetConnectionStatus.disconnected) {
      emit(HomePageConnectionError());
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
