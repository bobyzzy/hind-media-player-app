import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/routes/route_names.dart';

import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/features/user_profile/presentation/pages/profile_screen_shimmer.dart';
import 'package:hind_app/features/user_profile/presentation/widgets/log_out_bottom_sheet.dart';
import 'package:hind_app/gen/assets.gen.dart';

class AuthProfileScreen extends StatefulWidget {
  const AuthProfileScreen({super.key});

  @override
  State<AuthProfileScreen> createState() => _AuthProfileScreenState();
}

class _AuthProfileScreenState extends State<AuthProfileScreen> {
  late final ProfileBloc profileBloc;

  @override
  void initState() {
    profileBloc = context.read<ProfileBloc>();
    profileBloc.add(ProfileEvent.getMe());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return ProfileScreenShimmer();
        }
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
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          Assets.images.backgroundPlaceholder.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(10),
                            Text(state.userData.first.gender,
                                style: AppFonts.REGULAR_18),
                            const Gap(20),
                            Text(
                              state.userData.first
                                  .phoneNumber, //TODO: add formatter for phone number
                              style: AppFonts.MEDIUM_14.copyWith(
                                  color: AppColors.TEXT_GRAY_SHADE_COLOR),
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
                      context.push(RouteNames.editProfile);
                    },
                  ),
                  const Gap(60),
                  ListTile(
                    title:
                        Text('Tanlangan Filmlar', style: AppFonts.REGULAR_16),
                    trailing: Assets.icons.arrowRightIc.svg(),
                    titleAlignment: ListTileTitleAlignment.center,
                    onTap: () {
                      context.push(RouteNames.selectedPlayback);
                    },
                  ),
                  const Gap(10),
                  const Divider(color: AppColors.DIVIDER_COLOR),
                  const Gap(10),
                  ListTile(
                    onTap: () {
                      context.push(RouteNames.subscription);
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
                      context.push(RouteNames.settings);
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
                    title:
                        Text('Maxfiylik siyosati', style: AppFonts.REGULAR_16),
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
                    onTap: () {
                      profileBloc.add(ProfileEvent.getFavorites());
                    },
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
      },
    );
  }
}
