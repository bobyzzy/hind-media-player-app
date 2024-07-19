import 'package:equatable/equatable.dart';

class GenresResponseEntity extends Equatable {
  final int id;
  final String name;

  GenresResponseEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
