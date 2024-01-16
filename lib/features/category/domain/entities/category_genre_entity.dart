import 'package:equatable/equatable.dart';

class CategoryGenreEntity extends Equatable {
  final int id;
  final String? img;
  final String name;

  CategoryGenreEntity({
    required this.id,
    required this.name,
    required this.img,
  });

  @override
  List<Object?> get props => [id, name];
}
