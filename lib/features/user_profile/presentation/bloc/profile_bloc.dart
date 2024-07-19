import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hind_app/core/services/image_picker_service.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/service_locator.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState());

  Future<void> pickImage(ImageSource source) async {
    final imagePickerService = sl<ImagePickerService>();
    final file = await imagePickerService.pickImage(source);

    if (file.path != '') {
      emit(state.copyWith(file: file));
    }

    log(state.toString());
  }
}
