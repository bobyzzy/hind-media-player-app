import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(46, 46, 48, 1),
        isDense: true,
        hintText: hintText,
        hintStyle:
            AppFonts.REGULAR_16.copyWith(color: AppColors.TEXT_FIELD_COLOR),
        suffixIcon: const Icon(Icons.search),
        suffixIconColor: AppColors.TEXT_FIELD_ICON_COLOR,
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
      ),
    );
  }
}
