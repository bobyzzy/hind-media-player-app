// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:hind_app/features/home/domain/usecases/search_movies.dart';
import 'package:hind_app/features/home/presentation/bloc/search_bloc/search_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server failure';
const CACHED_FAILURE_MESSAGE = 'Cache failure';

class SearchCubit extends Cubit<SearchState> {
  final SearchMovies searchMovies;
  final InternetConnectionChecker connectionChecker;
  SearchCubit({
    required this.searchMovies,
    required this.connectionChecker,
  }) : super(SearchEmpty());

  Future<void> search(String query) async {
    emit(SearchLoading());
    if (await connectionChecker.connectionStatus == InternetConnectionStatus.connected) {
      var failureOrData = await searchMovies(SearchParams(query: query));
      failureOrData.fold((error) {
        emit(SearchDataError(_failureMessage(error)));
      }, (data) {
        if (data.length == 0) {
          emit(SearchDataEmpty());
        } else {
          emit(SearchDataLoaded(movies: data));
        }
      });
    } else {
      emit(SearchConnectionError());
    }
  }

  Future<void> dispose() async {
    emit(SearchEmpty());
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
