import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';
import 'package:hind_app/features/playback_details/domain/usecases/playback_details_usecase.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playback_bloc.freezed.dart';
part 'playback_state.dart';
part 'playback_event.dart';

class PlaybackBloc extends Bloc<PlaybackEvent, PlaybackState> {
  InternetConnectionChecker connectionChecker;
  PlaybackDetailsUsecase usecase;
  PlaybackBloc({
    required this.connectionChecker,
    required this.usecase,
  }) : super(PlaybackState()) {
    on<_PlaybackCallEvent>(call);
  }

  Future<void> call(_PlaybackCallEvent event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading));
    if (await connectionChecker.connectionStatus ==
        InternetConnectionStatus.connected) {
      final failureOrData =
          await usecase.call(ParamsDetails(id: event.id, type: event.type));
      failureOrData.fold((error) {
        emit(state.copyWith(
            status: Status.error,
            error: error,
            errorMessage: _failureMessage(error)));
      }, (data) {
        emit(state.copyWith(data: data, status: Status.loaded));
      });
    } else {
      emit(state.copyWith(
          status: Status.error, errorMessage: 'connection_error'));
    }
  }
}

String _failureMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return 'SERVER_FAILURE';
    case CacheFailure:
      return 'CACHE_FAILURE';
    default:
      return 'Unexpected Error';
  }
}
