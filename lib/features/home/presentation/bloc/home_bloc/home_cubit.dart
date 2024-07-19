import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_about_india.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_banners.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_soundtrack.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_tv_shou.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_movies.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_series.dart';
import 'package:hind_app/features/home/domain/entities/banner_entity.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/features/home/domain/entities/series_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';

class HomeCubit extends Cubit<HomeState> {
  final GetAllMovies getAllMovies;
  final GetAllSeries getAllSeries;
  final GetAllBanners getAllBanners;
  final GetAllTvShouUsecase tvShouUsecase;
  final InternetConnectionChecker connectionChecker;
  final GetAllAboutIndia aboutIndiaUsecase;
  final GetAllSoundTrack getAllSoundTrack;
  HomeCubit({
    required this.getAllMovies,
    required this.getAllSeries,
    required this.connectionChecker,
    required this.getAllBanners,
    required this.tvShouUsecase,
    required this.aboutIndiaUsecase,
    required this.getAllSoundTrack,
  }) : super(HomeState());

  Future<void> init() async {
    late var movies;
    late var series;
    late var banners;
    late var tvShou;
    late var aboutIndia;
    late var soundtrack;

    connectionChecker.onStatusChange.listen((event) async {
      if (event == InternetConnectionStatus.connected) {
        emit(state.copyWith(connectionStatus: ConnectionStatus.connected, status: Status.loading));
        var failureOrMovie = await getAllMovies(ParamsAllMovies());
        var failurOrSeries = await getAllSeries(ParamsAllSeries());
        var failureOrBanners = await getAllBanners(NoParams());
        var failureOrTvShou = await tvShouUsecase(TvShouParams());
        var failureOrAboutIndia = await aboutIndiaUsecase(AboutIndiaParams());
        var failureOrSoundtarck = await getAllSoundTrack(GetAllSoundractParams());
        failureOrMovie.fold((error) {
          emit(state.copyWith(errorMessage: _failureMessage(error), status: Status.error));
        }, (data) {
          movies = data;
          log('MOVIES LOADED:$data');
        });
        failurOrSeries.fold((error) {
          emit(state.copyWith(errorMessage: _failureMessage(error), status: Status.error));
        }, (data) {
          series = data;
          log('SERIES LOADED:$series');
        });

        failureOrBanners.fold(
            (error) =>
                emit(state.copyWith(errorMessage: _failureMessage(error), status: Status.error)),
            (data) {
          banners = data;
          log('BANNERS LOADED: $banners');
        });

        failureOrTvShou.fold(
            (error) => emit(state.copyWith(
                errorMessage: _failureMessage(error), failure: error, status: Status.error)),
            (data) => tvShou = data);

        failureOrAboutIndia.fold(
            (error) =>
                emit(state.copyWith(errorMessage: _failureMessage(error), status: Status.error)),
            (data) => aboutIndia = data);

        failureOrSoundtarck.fold(
            (error) => emit(state.copyWith(
                errorMessage: _failureMessage(error), failure: error, status: Status.error)),
            (data) => soundtrack = data);

        if (movies != null &&
            series != null &&
            banners != null &&
            tvShou != null &&
            aboutIndia != null &&
            soundtrack != null) {
          emit(state.copyWith(
            movies: movies,
            banners: banners,
            series: series,
            tvShou: tvShou,
            aboutIndia: aboutIndia,
            soundtrack: soundtrack,
            status: Status.loaded,
          ));
        }
      } else if (event == InternetConnectionStatus.disconnected) {
        emit(state.copyWith(connectionStatus: ConnectionStatus.disconnected));
      }
    });
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
