import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';
import 'package:hind_app/presentation/widgets/otp_form.dart';
import 'package:hind_app/presentation/widgets/widgets.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

@RoutePage()
class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  bool _isTimerFinished = false;
  var _timerCount = 120;

  @override
  void initState() {
    super.initState();
    countDownTimer();
  }

  Future<void> countDownTimer() async {
    for (var i = 120; i > 0; i--) {
      await Future.delayed(Duration(seconds: 1)).then((value) {
        if (_timerCount == 1) {
          _isTimerFinished = true;
        }
        setState(() {
          _timerCount--;
          print(_timerCount);
          print(_isTimerFinished);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          _buildPhoneVerificationHeaderText(),
          SizedBox(height: 10),
          _buildPhoneVerificationInlineSpanText(),
          _buildAnimatedImage(),
          Spacer(),
          OtpForm(),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 70,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.DETAIL_PAGE_TEXT_GRAY_COLOR, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '$_timerCount',
                    style: AppFonts.MEDIUM_18,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Text(
                'Kodni amal qilish muddati',
                style: AppFonts.MEDIUM_18,
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              hasIcon: false,
              isBold: true,
              textButton: 'Tasdiqlash',
              color: Colors.white,
              labelColor: Colors.black,
              onTap: () {},
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  LottieBuilder _buildAnimatedImage() {
    return LottieBuilder.asset(
      'assets/icons/phone_verification.json',
      width: 400,
      height: 400,
    );
  }

  Center _buildPhoneVerificationHeaderText() {
    return Center(
      child: Text(
        'Raqamni tasdiqlash',
        style: AppFonts.BOLD_32,
      ),
    );
  }

  RichText _buildPhoneVerificationInlineSpanText() {
    return RichText(
      text: TextSpan(
        text: '+998 91 476 9070',
        style: AppFonts.BOLD_14,
        children: [
          TextSpan(
            text: ' raqamiga \n tasdiqlash kodini yubordik',
            style: AppFonts.REGULAR_14,
          ),
        ],
      ),
    );
  }
}
