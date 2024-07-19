// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:hind_app/core/errors/exeptions.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker imagePicker;

  ImagePickerService({required this.imagePicker});

  Future<File> pickImage(ImageSource source) async {
    try {
      final imagePath = await imagePicker.pickImage(source: source);

      return File(imagePath?.path ?? '');
    } on PlatformException catch (e) {
      log(e.message ?? '');
      throw PickImageExeption();
    }
  }
}
