import 'package:equatable/equatable.dart';

class CategoryGenreEntity extends Equatable {
  final int id;
  final String name;
  CategoryGenreEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
