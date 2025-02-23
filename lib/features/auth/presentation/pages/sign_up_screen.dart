import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/routes/route_names.dart';
import 'package:hind_app/features/auth/presentation/widgets/sign_up_text_field.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

import 'package:lottie/lottie.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animationController.forward();
  }

  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              Center(
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _animationController.value,
                      child: Text(
                        'Ro‘yhatdan o‘tish',
                        style: AppFonts.BOLD_24,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _animationController.value,
                      child: Text(
                        'Ro‘yhatdan o‘tish uchun telefon \n raqamingizni kiriting',
                        textAlign: TextAlign.center,
                        style: AppFonts.REGULAR_14,
                      ),
                    );
                  },
                ),
              ),
              LottieBuilder.asset(
                'assets/icons/sign_up.json',
                repeat: false,
              ),
              AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Opacity(
                    opacity: _animationController.value,
                    child: Text(
                      'Telefon raqamingizni kiriting',
                      style: AppFonts.REGULAR_16.copyWith(
                        color: AppColors.DETAIL_PAGE_TEXT_GRAY_COLOR,
                      ),
                    ),
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Opacity(
                    opacity: _animationController.value,
                    child: Center(
                      child: Container(
                        constraints: BoxConstraints.loose(const Size(150, 70)),
                        child: SignUpTextField(
                          controller: _phoneController,
                          hintText: ' 00 000 00 00',
                          prefixText: '+998',
                          labelText: '+998',
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.MARGIN_24),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.MARGIN_16),
                child: CustomButton(
                  hasIcon: false,
                  isBold: true,
                  textButton: 'Davom etish',
                  color: Colors.white,
                  labelColor: Colors.black,
                  onTap: () {
                    context.pop();
                    context.push(RouteNames.phoneVerification,
                        extra: _phoneController.text);
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
}
