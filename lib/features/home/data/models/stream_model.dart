import 'package:hind_app/features/home/domain/entities/stream_entity.dart';

class StreamModel extends StreamEntity {
  StreamModel({
    required super.file,
    required super.title,
  });

  factory StreamModel.fromJson(Map<String, dynamic> json) {
    return StreamModel(file: json['file'], title: json['title']);
  }

  Map<String, dynamic> toJson() => {
        'file': file,
        'title': title,
      };
}
