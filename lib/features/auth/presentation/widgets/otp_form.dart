import 'package:flutter/material.dart';
import 'package:hind_app/features/auth/presentation/widgets/phone_verification_text_field.dart';

//TODO!: Реализовать валидатор
class OtpForm extends StatelessWidget {
  final TextEditingController textEditingController;
  const OtpForm({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(),
        PhoneVerificationTextField(textEditingController: textEditingController),
        Spacer(),
        PhoneVerificationTextField(textEditingController: textEditingController),
        Spacer(),
        PhoneVerificationTextField(textEditingController: textEditingController),
        Spacer(),
        PhoneVerificationTextField(textEditingController: textEditingController),
        Spacer(),
        PhoneVerificationTextField(textEditingController: textEditingController),
        Spacer(),
        PhoneVerificationTextField(textEditingController: textEditingController),
        Spacer(),
      ],
    );
  }
}
