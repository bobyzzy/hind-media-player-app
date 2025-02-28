import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/search/domain/entities/search_data_entity.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:hind_app/features/search/domain/usecases/search_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.dart';
part 'search_event.dart';
part 'search_bloc.freezed.dart';

//TODO: ПОПРОСИТЬ ИСПРАВИТЬ ЭНДПОИНТ КАРТИНОК

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchDataUsecase searchDataUsecase;
  final InternetConnectionChecker connectionChecker;
  SearchBloc({required this.searchDataUsecase, required this.connectionChecker})
      : super(SearchState()) {
    on<_SearchDataEvent>(search);
    on<_DisposeSearchEvent>(dispose);
  }

  Future<void> search(_SearchDataEvent event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));
    if (await connectionChecker.connectionStatus ==
        InternetConnectionStatus.connected) {
      var failureOrData =
          await searchDataUsecase(SearchParams(query: event.query));
      failureOrData.fold((error) {
        emit(state.copyWith(
            failure: error, status: Status.error, errorMessage: error.message));
      }, (data) {
        if (data.length == 0) {
          emit(state.copyWith(status: Status.loaded, movies: []));
        } else {
          emit(state.copyWith(status: Status.loaded, movies: data));
        }
      });
    } else {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: ConnectionFailure().message,
          failure: ConnectionFailure(),
        ),
      );
    }
  }

  Future<void> dispose(_DisposeSearchEvent event, Emitter emit) async {
    emit(state.copyWith(status: Status.initial));
  }
}
