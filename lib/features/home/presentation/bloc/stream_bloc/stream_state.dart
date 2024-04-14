// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:hind_app/features/home/domain/entities/stream_entity.dart';

class StreamState extends Equatable {
  @override
  List<Object?> get props => [];
}

class StreamEmpty extends StreamState {}

class StreamLoaded extends StreamState {
  final StreamEntity streamEntity;
  StreamLoaded({required this.streamEntity});
}

class StreamError extends StreamState {
  final String error;
  StreamError({required this.error});
}
