// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_cubit.dart';

import 'package:hind_app/features/details_playback/presentation/widgets/custom_icon_button.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_movie_trailer.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/theme/app_colors.dart';
import 'package:hind_app/theme/app_fonts.dart';

import '../../../../routes/app_router.gr.dart';

@RoutePage()
class MovieDetailScreen extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String title;
  final String genre;
  final int year;
  final bool isSeries;
  const MovieDetailScreen({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.genre,
    required this.year,
    required this.isSeries,
  }) : super(key: key);

  //TODO!: Надо отрефакторить код

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('asd')),
                PopupMenuItem(child: Text('asd')),
                PopupMenuItem(child: Text('asd')),
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () async {
                    final data = await context.read<StreamCubit>().call(id.toString());
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: height * 0.3,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          Image.asset('assets/images/background_placeholder.png'),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/icons/play_button.png'),
                  ),
                )
              ],
            ),
            const Gap(24),
            Center(
              child: Column(
                children: [
                  Text(
                    title,
                    style: AppFonts.EXTRA_BOLD_32,
                    textAlign: TextAlign.center,
                  ),
                  const Gap(10),
                  Text(
                    genre,
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
                    Text('2 hr 35 m', style: AppFonts.MEDIUM_16.copyWith()),
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
                    Text(year.toString(), style: AppFonts.MEDIUM_16),
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
                'Amarning qiz do\'sti yo\'q edi, chunki u shu paytgacha umrining qolgan qismini o\'tkazishga tayyor bo\'lgan odamni uchratmagan edi.Bir kuni u sayohatga ketayotib, temir yo\'l platformasida ko\'zini uzolmay qolgan go\'zallikka e\'tibor beradi.',
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
                    icon: Icons.play_arrow_rounded,
                    labelColor: Colors.black,
                    color: Colors.white,
                    onTap: () {},
                  ),
                ),
                CustomIconButton(
                  iconPath: 'assets/icons/save.png',
                  onTap: () {},
                ),
                CustomIconButton(
                  iconPath: 'assets/icons/share.png',
                  onTap: () {},
                ),
              ],
            ),
            const Gap(30),
            isSeries
                ? Container(
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
                            Text(
                              '4 mavsum, 42 seriya',
                              style: AppFonts.REGULAR_14.copyWith(
                                color: AppColors.TEXT_GRAY_SHADE_COLOR,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            context.router.push(MovieSeasonRoute());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Barchasi',
                                style:
                                    AppFonts.REGULAR_14.copyWith(color: AppColors.TEXT_RED_COLOR),
                              ),
                              const Gap(10),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: Color.fromRGBO(178, 35, 35, 1),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
            const Gap(24),
            const Divider(
              color: AppColors.DIVIDER_COLOR,
            ),
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
      ),
    );
  }
}
