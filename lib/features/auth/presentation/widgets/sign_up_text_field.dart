import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

//TODO!: Реализовать валидатор

class SignUpTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String prefixText;
  final TextEditingController controller;
  const SignUpTextField({
    super.key,
    required this.labelText,
    required this.prefixText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      style: AppFonts.MEDIUM_16,
      controller: controller,
      inputFormatters: [PhoneInputFormatter(), LengthLimitingTextInputFormatter(13)],
      decoration: InputDecoration(
        border: UnderlineInputBorder(borderSide: BorderSide.none),
        labelText: labelText,
        alignLabelWithHint: true,
        labelStyle: AppFonts.MEDIUM_16,
        floatingLabelStyle: AppFonts.MEDIUM_16,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixText: prefixText,
        prefixStyle: AppFonts.MEDIUM_16,
        hintText: hintText,
        hintStyle: AppFonts.MEDIUM_16,
      ),
    );
  }
}

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digitOnly = newValue.text.replaceAll(RegExp(r'[^\d]+'), '');
    final initialSpecialSymbolCount =
        newValue.selection.textBefore(newValue.text).replaceAll(RegExp(r'[\d]+'), '').length;

    var cursorPosition = newValue.selection.start - initialSpecialSymbolCount;
    var finalCursorPosition = cursorPosition;

    final digitsOnlyChars = digitOnly.split('');

    if (oldValue.selection.textInside(oldValue.text) == ' ') {
      digitsOnlyChars.removeAt(cursorPosition - 1);
      finalCursorPosition -= 2;
    }

    final newString = <String>[];

    for (var i = 0; i < digitsOnlyChars.length; i++) {
      if (i == 0 || i == 2 || i == 5 || i == 7) {
        newString.add(' ');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursorPosition) finalCursorPosition += 1;
      } else {
        newString.add(digitsOnlyChars[i]);
      }
    }

    final resultString = newString.join('');

    return TextEditingValue(
      text: resultString, //
      selection: TextSelection.collapsed(offset: finalCursorPosition),
    );
  }
}
