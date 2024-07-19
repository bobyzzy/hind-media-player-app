import 'package:flutter/material.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool hasIcon;
  final bool hasBorder;
  final Color? fillcolor;
  final BorderRadius? borderRadius;
  final void Function(String value)? onChanged;

  const CustomTextField({
    required this.hintText,
    required this.hasIcon,
    required this.hasBorder,
    required this.onChanged,
    this.fillcolor,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      style: AppFonts.MEDIUM_20,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillcolor ?? const Color.fromRGBO(46, 46, 48, 1),
        isDense: true,
        hintText: hintText,
        hintStyle: AppFonts.REGULAR_16.copyWith(color: AppColors.TEXT_FIELD_COLOR),
        suffixIcon: hasIcon ? const Icon(Icons.search) : null,
        suffixIconColor: AppColors.TEXT_FIELD_ICON_COLOR,
        border: OutlineInputBorder(
            borderSide: hasBorder ? BorderSide(color: Colors.grey.shade600) : BorderSide.none,
            borderRadius:
                borderRadius ?? BorderRadius.all(Radius.circular(AppDimens.BORDER_RADIUS_10))),
        focusedBorder: OutlineInputBorder(
            borderSide: hasBorder ? BorderSide(color: Colors.grey.shade600) : BorderSide.none,
            borderRadius:
                borderRadius ?? BorderRadius.all(Radius.circular(AppDimens.BORDER_RADIUS_10))),
      ),
    );
  }
}
