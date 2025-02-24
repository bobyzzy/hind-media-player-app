import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/routes/route_names.dart';

import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/gen/assets.gen.dart';

class UnathorizedProfileScreen extends StatelessWidget {
  const UnathorizedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Kabinet'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Text('Xush kelibsiz!', style: AppFonts.SEMI_BOLD_24),
            Gap(10),
            Text(
              'Dasturdan to‘liq funksional foydalanish uchun iltimos tizimdan ro‘yxatdan o‘ting',
              style: AppFonts.REGULAR_14,
            ),
            Gap(30),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              title: Text('Maxfiylik siyosati', style: AppFonts.REGULAR_16),
              trailing: Assets.icons.arrowRightIc.svg(),
              titleAlignment: ListTileTitleAlignment.center,
            ),
            Gap(10),
            Divider(color: AppColors.DIVIDER_COLOR),
            Gap(10),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              title: Text('Yordam kerakmi?', style: AppFonts.REGULAR_16),
              trailing: Assets.icons.arrowRightIc.svg(),
              titleAlignment: ListTileTitleAlignment.center,
            ),
            Gap(10),
            Divider(color: AppColors.DIVIDER_COLOR),
            Gap(10),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              title: Text('Ilova haqida', style: AppFonts.REGULAR_16),
              trailing: Assets.icons.arrowRightIc.svg(),
              titleAlignment: ListTileTitleAlignment.center,
            ),
            Gap(10),
            Divider(color: AppColors.DIVIDER_COLOR),
            Gap(10),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        margin: EdgeInsets.all(AppDimens.MARGIN_24),
        child: CustomButton(
          hasIcon: false,
          isBold: false,
          textButton: 'Ro\'yxatdan otish',
          color: Colors.white,
          labelColor: Colors.black,
          onTap: () {
            context.push(RouteNames.signUp);
          },
        ),
      ),
    );
  }
}
