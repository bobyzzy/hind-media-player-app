import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';
import 'package:hind_app/features/auth/presentation/widgets/otp_form.dart';
import 'package:hind_app/presentation/widgets/widgets.dart';
import 'package:hind_app/routes/app_router.gr.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
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
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.DETAIL_PAGE_TEXT_GRAY_COLOR,
                          width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '1:43',
                        style: AppFonts.MEDIUM_16,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Kodni amal qilish muddati',
                    style: AppFonts.REGULAR_14,
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
                  onTap: () {
                    context.router.popAndPush(HomeRoute());
                  },
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  LottieBuilder _buildAnimatedImage() {
    return LottieBuilder.asset(
      'assets/icons/phone_verification.json',
      width: 300,
      height: 300,
    );
  }

  Center _buildPhoneVerificationHeaderText() {
    return Center(
      child: Text(
        'Raqamni tasdiqlash',
        style: AppFonts.BOLD_24,
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
