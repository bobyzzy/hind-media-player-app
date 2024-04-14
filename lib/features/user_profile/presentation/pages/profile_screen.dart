import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';

//TODO!: при нажатие на "Yordam Kerakmi" перенаправить в телегу

@RoutePage(name: "ProfileScreenRoute")
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kabinet', style: AppFonts.MEDIUM_18),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Log out",
              style: AppFonts.REGULAR_18,
            ),
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
                onTap: () {},
              ),
              const Gap(60),
              //TODO: Нужно оптимизировать
              ListTile(
                title: Text('Tanlangan Filmlar', style: AppFonts.REGULAR_16),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                titleAlignment: ListTileTitleAlignment.center,
                onTap: () {
                  context.router.push(SelectedFilmRoute());
                },
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),

              ListTile(
                onTap: () => context.router.push(SignUpRoute()),
                title: Text('Sozlamalar', style: AppFonts.REGULAR_16),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),
              ListTile(
                title: Text('Yordam kerakmi?', style: AppFonts.REGULAR_16),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(10),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
