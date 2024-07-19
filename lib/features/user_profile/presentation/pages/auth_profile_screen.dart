import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/features/user_profile/presentation/widgets/log_out_bottom_sheet.dart';
import 'package:hind_app/gen/assets.gen.dart';

@RoutePage()
class AuthProfileScreen extends StatelessWidget {
  const AuthProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kabinet', style: AppFonts.MEDIUM_18),
        actions: [
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                useRootNavigator: true,
                backgroundColor: AppColors.BACKGROUND_COLOR,
                elevation: 0,
                builder: (context) {
                  return LogOutBottomSheet();
                },
              );
            },
            child: Text("Log out", style: AppFonts.REGULAR_18),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              const Gap(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(image: AssetImage('assets/images/01.jpg'))),
                  ),
                  const Gap(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        Text('Malika', style: AppFonts.REGULAR_18),
                        const Gap(20),
                        Text(
                          "+998 99 123 45 67",
                          style:
                              AppFonts.MEDIUM_14.copyWith(color: AppColors.TEXT_GRAY_SHADE_COLOR),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              CustomButton(
                hasIcon: false,
                isBold: false,
                color: const Color.fromRGBO(46, 45, 47, 1),
                labelColor: Colors.white,
                textButton: "Profil Sozlamalar",
                onTap: () {
                  context.router.push(EditProfileRoute());
                },
              ),
              const Gap(60),
              ListTile(
                title: Text('Tanlangan Filmlar', style: AppFonts.REGULAR_16),
                trailing: Assets.icons.arrowRightIc.svg(),
                titleAlignment: ListTileTitleAlignment.center,
                onTap: () {
                  context.router.push(SelectedPlaybackRoute());
                },
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),
              ListTile(
                onTap: () {
                  context.router.push(SubscriptionRoute());
                },
                title: Text('To\'lovlarim', style: AppFonts.REGULAR_16),
                trailing: Assets.icons.arrowRightIc.svg(),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),
              ListTile(
                onTap: () {
                  context.router.push(SettingsRoute());
                },
                title: Text('Sozlamalar', style: AppFonts.REGULAR_16),
                trailing: Assets.icons.arrowRightIc.svg(),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),
              ListTile(
                onTap: () {},
                title: Text('Maxfiylik siyosati', style: AppFonts.REGULAR_16),
                trailing: Assets.icons.arrowRightIc.svg(),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),
              ListTile(
                onTap: () {},
                title: Text('Yordam kerakmi?', style: AppFonts.REGULAR_16),
                trailing: Assets.icons.arrowRightIc.svg(),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),
              ListTile(
                onTap: () {},
                title: Text('Ilova haqida', style: AppFonts.REGULAR_16),
                trailing: Assets.icons.arrowRightIc.svg(),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(30),
            ],
          ),
        ),
      ),
    );
  }
}
