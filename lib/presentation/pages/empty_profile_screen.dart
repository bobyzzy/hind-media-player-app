import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_dimens.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';
import 'package:hind_app/presentation/widgets/widgets.dart';
import 'package:hind_app/routes/app_router.gr.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class EmptyProfileScreen extends StatelessWidget {
  const EmptyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            'Profil yaratish',
            style: AppFonts.BOLD_32,
          ),
          Gap(20),
          Container(
            width: 300,
            child: Text(
              'Davom etish uchun Kirish tugmasini bosish orqali tizimga kiring.',
              textAlign: TextAlign.center,
              style: AppFonts.REGULAR_16.copyWith(height: 1.5),
            ),
          ),
          Spacer(),
          LottieBuilder.asset('assets/icons/user.json'),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: AppDimens.MARGIN_16),
            child: CustomButton(
              hasIcon: false,
              isBold: true,
              textButton: 'Kirish',
              color: Colors.white,
              labelColor: Colors.black,
              onTap: () {
                context.router.popAndPush(SignUpRoute());
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
