import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/features/playback_details/domain/usecases/playback_details_usecase.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_state.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class PlaybackCubit extends Cubit<PlaybackState> {
  InternetConnectionChecker connectionChecker;
  PlaybackDetailsUsecase usecase;
  PlaybackCubit({
    required this.connectionChecker,
    required this.usecase,
  }) : super(PlaybackInitial());

  Future<void> call(String id, String type) async {
    emit(PlaybackLoading());
    if (await connectionChecker.connectionStatus == InternetConnectionStatus.connected) {
      final failureOrData = await usecase.call(ParamsDetails(id: id, type: type));
      failureOrData.fold((error) {
        emit(PlaybackError());
      }, (data) {
        emit(PlaybackLoaded(data));
      });
    } else {
      emit(PlaybackConnectionError());
    }
  }
}
