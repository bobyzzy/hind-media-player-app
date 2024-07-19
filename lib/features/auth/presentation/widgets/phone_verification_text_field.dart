import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class PhoneVerificationTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  const PhoneVerificationTextField({super.key, required this.textEditingController});

  @override
  State<PhoneVerificationTextField> createState() => _PhoneVerificationTextFieldState();
}

class _PhoneVerificationTextFieldState extends State<PhoneVerificationTextField> {
  bool _isFieldFilled = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 30,
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if (value.length == 1) {
            widget.textEditingController.text += value;
            FocusScope.of(context).nextFocus();
            setState(() {
              _isFieldFilled = true;
            });
          }
          if (value.length == 0) {
            widget.textEditingController.text.substring(value.length, 1);
            FocusScope.of(context).previousFocus();

            setState(() {
              _isFieldFilled = false;
            });
          }
        },
        onSaved: (newValue) {
          log(newValue.toString());
        },
        decoration: InputDecoration(
          hintText: '*',
          floatingLabelStyle: AppFonts.BOLD_32,
          labelStyle: AppFonts.BOLD_32,
          alignLabelWithHint: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintStyle: AppFonts.BOLD_32.copyWith(color: AppColors.TEXT_FIELD_BORDER_COLOR),
          enabledBorder: _isFieldFilled
              ? UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.TEXT_FIELD_FILLED_BORDER_COLOR))
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.TEXT_FIELD_BORDER_COLOR,
                  ),
                ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        style: AppFonts.BOLD_32,
        textAlign: TextAlign.center,
      ),
    );
  }
}
