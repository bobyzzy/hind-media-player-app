import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/gen/assets.gen.dart';

import '../../../../core/theme/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sozlamalar"),
        centerTitle: false,
      ),
      body: Container(
        padding: EdgeInsets.all(AppDimens.PADDING_16),
        child: Column(
          children: [
            ListTile(
              title: Text('Bildirishnoma', style: AppFonts.REGULAR_16),
              trailing: Assets.icons.arrowRightIc.svg(),
              titleAlignment: ListTileTitleAlignment.center,
              onTap: () {},
            ),
            const Gap(10),
            const Divider(color: AppColors.DIVIDER_COLOR),
            const Gap(10),
            ListTile(
              title: Text('Dastur tili', style: AppFonts.REGULAR_16),
              trailing: Assets.icons.arrowRightIc.svg(),
              titleAlignment: ListTileTitleAlignment.center,
              onTap: () {},
            ),
            const Gap(10),
            const Divider(color: AppColors.DIVIDER_COLOR),
            const Gap(10),
            ListTile(
              title: Text('Hisobni o‘chirish', style: AppFonts.REGULAR_16),
              trailing: Assets.icons.arrowRightIc.svg(),
              titleAlignment: ListTileTitleAlignment.center,
              onTap: () {},
            ),
            const Gap(10),
            const Divider(color: AppColors.DIVIDER_COLOR),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
