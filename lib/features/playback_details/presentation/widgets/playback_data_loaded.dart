import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/core/routes/route_names.dart';

import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/core/utils/snackbar.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';
import 'package:hind_app/features/playback_details/presentation/widgets/custom_icon_button.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_movie_trailer.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/gen/assets.gen.dart';

class PlaybackDataLoadedWidget extends StatelessWidget {
  const PlaybackDataLoadedWidget({super.key, required this.data});

  final PlaybackDetailsResponseEntity data;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  //final data = await context.read<StreamCubit>().call(id.toString());
                },
                child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: height * 0.3,
                      child: CachedNetworkImage(
                        imageUrl: data.thumbnail,
                        fit: BoxFit.fill,
                        placeholder: (context, url) => Image.asset(
                          Assets.images.backgroundPlaceholder.path,
                          fit: BoxFit.cover,
                        ),
                        errorWidget: (context, url, error) => Image.asset(
                          Assets.images.backgroundPlaceholder.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    authState.authStatus == AuthStatus.AUTHORIZED
                        ? Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Assets.icons.redPlayButton.svg(),
                            ),
                          )
                        : Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: context.width,
                              height: height * 0.3,
                              color: Colors.black45,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.info_circle,
                                      color: Colors.white, size: 50),
                                  Center(
                                      child: Text(
                                    'Tomosha qilish uchun registratsiya o\'tin va to\'lov bolishi shart',
                                    textAlign: TextAlign.center,
                                    style: AppFonts.REGULAR_16,
                                  )),
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
              ),
              const Gap(24),
              Center(
                child: Column(
                  children: [
                    Text(
                      data.title,
                      style: AppFonts.EXTRA_BOLD_32,
                      textAlign: TextAlign.center,
                    ),
                    const Gap(10),
                    Text(
                      data.genreName ?? '',
                      style: AppFonts.MEDIUM_16
                          .copyWith(color: AppColors.FILM_GANRE_GRAY_TEXT),
                    ),
                  ],
                ),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(data.duration ?? '00:00',
                          style: AppFonts.MEDIUM_16.copyWith()),
                      const Gap(16),
                      Text(
                        "Vaqti",
                        style: AppFonts.REGULAR_14.copyWith(
                          color: AppColors.YEAR_TEXT_GRAY_COLOR,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Hindiston', style: AppFonts.MEDIUM_16),
                      const Gap(16),
                      Text(
                        "Davlat",
                        style: AppFonts.REGULAR_14.copyWith(
                          color: AppColors.YEAR_TEXT_GRAY_COLOR,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(data.year.toString(), style: AppFonts.MEDIUM_16),
                      const Gap(16),
                      Text(
                        "Yil",
                        style: AppFonts.REGULAR_14.copyWith(
                          color: AppColors.YEAR_TEXT_GRAY_COLOR,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                height: height * 0.15,
                child: Text(
                  style: AppFonts.REGULAR_14.copyWith(height: 1.5),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  data.description ?? '',
                ),
              ),
              const Gap(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: width * 0.5,
                    child: CustomButton(
                      textButton: "Tomosha Qilish",
                      isBold: false,
                      hasIcon: true,
                      icon: Assets.icons.blackPlayIc.svg(),
                      labelColor: Colors.black,
                      color: Colors.white,
                      onTap: () {},
                    ),
                  ),
                  BlocListener<ProfileBloc, ProfileState>(
                    listener: (context, profileState) {
                      if (profileState.status == Status.loaded) {
                        showSnackbar(
                          context: context,
                          icon: Icons.done,
                          message: 'Tanlanganlarga qo\'shildi',
                          backgroundColor: Colors.green.shade800,
                        );
                      } else if (profileState.status == Status.error) {
                        showSnackbar(
                          context: context,
                          icon: Icons.error,
                          message: 'Xatolik yuz berdi',
                          backgroundColor: Colors.red.shade800,
                        );
                      }
                    },
                    child: CustomIconButton(
                      icon: Assets.icons.saveFilledIc.svg(),
                      onTap: () {
                        if (authState.authStatus == AuthStatus.AUTHORIZED) {
                          context.read<ProfileBloc>().add(
                                ProfileEvent.addFavoritePlayback(
                                  category: data.category,
                                  id: data.id,
                                ),
                              );
                          //!TODO: может возникнуть проблема так как .whenComplete может вернут и ошибку и показ снэкбара сработает
                        } else {
                          showSnackbar(
                            context: context,
                            message: 'Iltimos registratsiyadan o\'tin',
                            icon: Icons.error,
                            backgroundColor: AppColors.TEXT_RED_COLOR,
                          );
                        }
                      },
                    ),
                  ),
                  CustomIconButton(
                    icon: Assets.icons.shareFilledIc.svg(),
                    onTap: () {},
                  ),
                ],
              ),
              const Gap(30),
              data.seasons == null
                  ? SizedBox()
                  : Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mavsum va seriyalar",
                                  style: AppFonts.MEDIUM_18),
                              const Gap(10),
                              Row(
                                children: [
                                  Text(
                                    data.seasons!.length.toString(),
                                    style: AppFonts.REGULAR_14.copyWith(
                                      color: AppColors.TEXT_GRAY_SHADE_COLOR,
                                    ),
                                  ),
                                  Text(
                                    ' mavsum',
                                    style: AppFonts.REGULAR_14.copyWith(
                                      color: AppColors.TEXT_GRAY_SHADE_COLOR,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              log('tapped');
                              if (data.seasons != null) {
                                context.push(
                                  RouteNames.playbackSeason,
                                  extra: data.seasons ?? [],
                                );
                              }
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Barchasi',
                                  style: AppFonts.REGULAR_14.copyWith(
                                      color: AppColors.TEXT_RED_COLOR),
                                ),
                                const Gap(10),
                                const Icon(Icons.arrow_forward_ios,
                                    size: 14,
                                    color: Color.fromRGBO(178, 35, 35, 1)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              const Gap(24),
              const Divider(color: AppColors.DIVIDER_COLOR),
              const Gap(24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Treylerlar', style: AppFonts.MEDIUM_18),
              ),
              const Gap(20),
              const CustomMovieTrailer(),
              const Gap(20),
              const Divider(
                color: AppColors.DIVIDER_COLOR,
              ),
              const Gap(20),
            ],
          ),
        );
      },
    );
  }
}
