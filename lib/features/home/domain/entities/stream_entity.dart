// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

//TODO!: Надо убрать 
class StreamEntity extends Equatable {
  final String file;
  final String title;
  
  const StreamEntity({
    required this.file,
    required this.title,
  });

  @override
  List<Object?> get props => [file, title];
}
