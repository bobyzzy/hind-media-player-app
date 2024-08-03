import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/home/presentation/bloc/home_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/pages/home_shimmer_banners.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_item.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_section.dart';
import 'package:hind_app/features/home/presentation/widgets/home_slider.dart';
import 'package:hind_app/features/home/presentation/widgets/watched_films_section.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/gen/assets.gen.dart';

@RoutePage(name: "HomeScreenRoute")
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: AppDimens.PADDING_24),
          child: Text("Salom Malika", style: AppFonts.SEMI_BOLD_20),
        ),
        actions: [
          IconButton(
              onPressed: () => context.router.push(SearchRoute()),
              icon: Assets.icons.searchIc.svg()),
          const SizedBox(width: 16),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.status == Status.loaded) {
            return Scrollbar(
              child: SingleChildScrollView(
                primary: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    CustomCarousel(
                      itemCount: state.banners.length,
                      images: state.banners.map((e) => e.thumbnail).toList(),
                      itemBuilder: (context, index, realIndex) {
                        return InkWell(
                          onTap: () {
                            context.read<PlaybackCubit>().call(
                                state.banners[index].movieOrSeriesId.toString(),
                                state.banners[index].bannerType);

                            context.router.push(MovieDetailRoute());
                          },
                          child: Ink(
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                              child: CachedNetworkImage(
                                placeholder: (context, url) => Image.asset(
                                    Assets.images.backgroundPlaceholder.path,
                                    fit: BoxFit.cover),
                                imageUrl: state.banners[index].thumbnail,
                                width: MediaQuery.of(context).size.width * 0.95,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const Gap(30),
                    authState.authStatus == AuthStatus.AUTHORIZED
                        ? const WatchedFilmSection()
                        : SizedBox(),
                    const Gap(50),
                    CustomFilmSection(
                      headerText: 'Eng ko\'p ko\'rilgan',
                      itemCount: state.movies.length,
                      navigateButton: () {
                        context.router.push(
                          MovieGeneratedRoute(
                            appbarTitle: 'Eng ko\'p ko\'rilgan',
                            itemCount: 1,
                            data: state.movies,
                          ),
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            context.read<PlaybackCubit>().call(
                                  state.movies[index].id.toString(),
                                  state.movies[index].category,
                                );
                            context.router.push(MovieDetailRoute());
                          },
                          hasTitle: true,
                          titleText: state.movies[index].rating,
                          imageAsset: state.movies[index].thumbnail,
                        );
                      },
                    ),
                    const Gap(20),
                    CustomFilmSection(
                      headerText: 'Filmlar',
                      itemCount: state.movies.length,
                      navigateButton: () {
                        context.router.push(MovieGeneratedRoute(
                            appbarTitle: 'Filmlar', itemCount: 20, data: state.movies));
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            context.read<PlaybackCubit>().call(
                                  state.movies[index].id.toString(),
                                  state.movies[index].category,
                                );
                            context.router.push(MovieDetailRoute());
                          },
                          hasTitle: true,
                          titleText: state.movies[index].rating,
                          imageAsset: state.movies[index].thumbnail,
                        );
                      },
                    ),
                    const Gap(20),
                    CustomFilmSection(
                      headerText: 'Seriallar',
                      itemCount: state.series.length,
                      navigateButton: () {
                        context.router.push(MovieGeneratedRoute(
                            appbarTitle: 'Seriallar', itemCount: 20, data: state.series));
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            context.read<PlaybackCubit>().call(
                                  state.series[index].id.toString(),
                                  state.series[index].category,
                                );
                            context.router.push(MovieDetailRoute());
                          },
                          hasTitle: true,
                          titleText: state.series[index].rating,
                          imageAsset: state.series[index].thumbnail,
                        );
                      },
                    ),
                    const Gap(20),
                    CustomFilmSection(
                      headerText: 'Tv Shou',
                      itemCount: state.tvShou.length,
                      navigateButton: () {
                        context.router.push(MovieGeneratedRoute(
                          appbarTitle: 'Tv Shou',
                          itemCount: 20,
                          data: state.tvShou,
                        ));
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            context.read<PlaybackCubit>().call(
                                  state.tvShou[index].id.toString(),
                                  state.tvShou[index].category,
                                );
                            context.router.push(MovieDetailRoute());
                          },
                          hasTitle: true,
                          titleText: state.tvShou[index].rating,
                          imageAsset: state.tvShou[index].thumbnail,
                        );
                      },
                    ),
                    const Gap(20),
                    CustomFilmSection(
                      headerText: 'Hindiston haqida',
                      itemCount: state.aboutIndia.length,
                      navigateButton: () {
                        context.router.push(MovieGeneratedRoute(
                          appbarTitle: 'Hindiston ',
                          itemCount: 20,
                          data: state.aboutIndia,
                        ));
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            log(state.aboutIndia.toString());
                            context.read<PlaybackCubit>().call(
                                  state.aboutIndia[index].id.toString(),
                                  state.aboutIndia[index].category,
                                );
                            context.router.push(MovieDetailRoute());
                          },
                          hasTitle: true,
                          titleText: state.aboutIndia[index].rating,
                          imageAsset: state.aboutIndia[index].thumbnail,
                        );
                      },
                    ),
                    const Gap(20),
                    CustomFilmSection(
                      headerText: 'Soundtrack',
                      itemCount: state.soundtrack.length,
                      navigateButton: () {
                        context.router.push(MovieGeneratedRoute(
                          appbarTitle: 'Hindiston ',
                          itemCount: 20,
                          data: state.soundtrack,
                        ));
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            log(state.aboutIndia.toString());
                            context.read<PlaybackCubit>().call(
                                  state.soundtrack[index].id.toString(),
                                  state.soundtrack[index].category,
                                );
                            context.router.push(MovieDetailRoute());
                          },
                          hasTitle: false,
                          titleText: state.soundtrack[index].rating,
                          imageAsset: state.soundtrack[index].thumbnail,
                        );
                      },
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            );
          } else if (state.status == Status.loading) {
            return HomeShimmerBanners();
          } else if (state.status == Status.error) {
            return Center(
              child: Text(
                state.errorMessage,
                style: AppFonts.BOLD_18,
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
