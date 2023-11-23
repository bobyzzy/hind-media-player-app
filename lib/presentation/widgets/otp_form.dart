import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

import '../theme/app_colors.dart';

//TODO!: Реализовать валидатор
class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(),
          PhoneVerificationTextField(),
          Spacer(),
          PhoneVerificationTextField(),
          Spacer(),
          PhoneVerificationTextField(),
          Spacer(),
          PhoneVerificationTextField(),
          Spacer(),
        ],
      ),
    );
  }
}

class PhoneVerificationTextField extends StatefulWidget {
  const PhoneVerificationTextField({super.key});

  @override
  State<PhoneVerificationTextField> createState() =>
      _PhoneVerificationTextFieldState();
}

class _PhoneVerificationTextFieldState
    extends State<PhoneVerificationTextField> {
  bool _isFieldFilled = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 70,
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
            setState(() {
              _isFieldFilled = true;
            });
          }
          if (value.length == 0) {
            FocusScope.of(context).previousFocus();
            setState(() {
              _isFieldFilled = false;
            });
          }
        },
        onSaved: (newValue) {
          print(newValue);
        },
        decoration: InputDecoration(
          label: Center(child: Text('*')),
          hintText: '*',
          floatingLabelStyle: AppFonts.BOLD_32,
          labelStyle: AppFonts.BOLD_32,
          alignLabelWithHint: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintStyle: AppFonts.BOLD_32
              .copyWith(color: AppColors.TEXT_FIELD_BORDER_COLOR),
          enabledBorder: _isFieldFilled
              ? UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: AppColors.TEXT_FIELD_FILLED_BORDER_COLOR))
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
