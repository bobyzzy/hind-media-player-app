// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:hind_app/features/home/domain/usecases/get_stream_by_id.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_state.dart';

class StreamCubit extends Cubit<StreamState> {
  GetStreamById getStreamById;
  InternetConnectionChecker connectionChecker;
  StreamCubit({
    required this.getStreamById,
    required this.connectionChecker,
  }) : super(StreamEmpty());

  Future<void> call(String queryId) async {
    if (await connectionChecker.connectionStatus == InternetConnectionStatus.disconnected) {
      emit(StreamError(error: 'Internet Connection error'));
    } else if (await connectionChecker.connectionStatus == InternetConnectionStatus.connected) {
      final data = await getStreamById(StreamByIdParams(queryId: queryId));

      data.fold((error) {
        emit(StreamError(error: 'FAILURE'));
      }, (data) {
        emit(StreamLoaded(streamEntity: data));
      });
    }
  }
}
