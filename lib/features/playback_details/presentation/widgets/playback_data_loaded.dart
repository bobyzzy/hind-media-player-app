import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';
import 'package:hind_app/features/playback_details/presentation/widgets/custom_icon_button.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_movie_trailer.dart';
import 'package:hind_app/gen/assets.gen.dart';

class PlaybackDataLoadedWidget extends StatelessWidget {
  const PlaybackDataLoadedWidget({super.key, required this.data});

  final PlaybackDetailsResponseEntity data;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () async {
                  //final data = await context.read<StreamCubit>().call(id.toString());
                },
                child: Container(
                  width: double.maxFinite,
                  height: height * 0.3,
                  child: CachedNetworkImage(
                    imageUrl: data.thumbnail,
                    fit: BoxFit.fill,
                    placeholder: (context, url) => Image.asset(
                      Assets.images.backgroundPlaceholder.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Assets.icons.redPlayButton.svg(),
                ),
              )
            ],
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
                  style: AppFonts.MEDIUM_16.copyWith(color: AppColors.FILM_GANRE_GRAY_TEXT),
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
                  Text(data.duration ?? '00:00', style: AppFonts.MEDIUM_16.copyWith()),
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
              CustomIconButton(
                icon: Assets.icons.saveFilledIc.svg(),
                onTap: () {},
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
                          Text("Mavsum va seriyalar", style: AppFonts.MEDIUM_18),
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
                            context.router.push(PlaybackSeasonRoute(seasons: data.seasons ?? []));
                          }
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Barchasi',
                              style: AppFonts.REGULAR_14.copyWith(color: AppColors.TEXT_RED_COLOR),
                            ),
                            const Gap(10),
                            const Icon(Icons.arrow_forward_ios,
                                size: 14, color: Color.fromRGBO(178, 35, 35, 1)),
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
  }
}
