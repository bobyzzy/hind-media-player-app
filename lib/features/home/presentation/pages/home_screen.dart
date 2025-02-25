import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/theme/app_dimens.dart';
import '../../../../core/theme/app_fonts.dart';
import '../../../../core/utils/enums.dart';
import '../../../../gen/assets.gen.dart';
import '../../../auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import '../../../playback_details/presentation/bloc/playback_bloc.dart';
import '../bloc/home_bloc/home_bloc.dart';
import '../widgets/custom_film_item.dart';
import '../widgets/custom_film_section.dart';
import '../widgets/home_slider.dart';
import '../widgets/watched_films_section.dart';
import 'home_shimmer_banners.dart';
import 'movie_generated_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final playbackBloc = context.read<PlaybackBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: AppDimens.PADDING_24),
          child: Text("Salom Malika", style: AppFonts.SEMI_BOLD_20),
        ),
        actions: [
          IconButton(
              onPressed: () => context.push(RouteNames.search),
              icon: Assets.icons.searchIc.svg()),
          const SizedBox(width: 16),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
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
                          onTap: () async {
                            playbackBloc.add(
                              PlaybackEvent.call(
                                id: state.banners[index].movieOrSeriesId
                                    .toString(),
                                type: state.banners[index].bannerType,
                              ),
                            );

                            context.push(RouteNames.movieDetail);
                          },
                          child: Ink(
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
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
                        context.push(
                          RouteNames.movieDetail,
                          extra: MovieGenScreenArgs(
                            appbarTitle: 'Eng ko\'p ko\'rilgan',
                            itemCount: 1,
                            data: state.movies,
                          ),
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            playbackBloc.add(PlaybackEvent.call(
                              id: state.movies[index].id.toString(),
                              type: state.movies[index].category,
                            ));
                            context.push(RouteNames.movieDetail);
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
                        context.push(
                          RouteNames.movieDetail,
                          extra: MovieGenScreenArgs(
                            appbarTitle: 'Filmlar',
                            itemCount: 20,
                            data: state.movies,
                          ),
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            playbackBloc.add(PlaybackEvent.call(
                              id: state.movies[index].id.toString(),
                              type: state.movies[index].category,
                            ));
                            context.push(RouteNames.movieDetail);
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
                        context.push(
                          RouteNames.movieDetail,
                          extra: MovieGenScreenArgs(
                            appbarTitle: 'Seriallar',
                            itemCount: 20,
                            data: state.movies,
                          ),
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            playbackBloc.add(PlaybackEvent.call(
                              id: state.series[index].id.toString(),
                              type: state.series[index].category,
                            ));
                            context.push(RouteNames.movieDetail);
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
                        context.push(
                          RouteNames.movieDetail,
                          extra: MovieGenScreenArgs(
                            appbarTitle: 'Tv Shou',
                            itemCount: 20,
                            data: state.movies,
                          ),
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            playbackBloc.add(PlaybackEvent.call(
                              id: state.tvShou[index].id.toString(),
                              type: state.tvShou[index].category,
                            ));
                            context.push(RouteNames.movieDetail);
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
                        context.push(
                          RouteNames.movieDetail,
                          extra: MovieGenScreenArgs(
                            appbarTitle: 'Hindiston',
                            itemCount: 20,
                            data: state.movies,
                          ),
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            log(state.aboutIndia.toString());
                            playbackBloc.add(PlaybackEvent.call(
                              id: state.aboutIndia[index].id.toString(),
                              type: state.aboutIndia[index].category,
                            ));
                            context.push(RouteNames.movieDetail);
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
                        context.push(
                          RouteNames.movieDetail,
                          extra: MovieGenScreenArgs(
                            appbarTitle: 'Hindiston',
                            itemCount: 20,
                            data: state.movies,
                          ),
                        );
                      },
                      itemBuilder: (buildContext, index) {
                        return CustomFilmItem(
                          onTap: () {
                            log(state.aboutIndia.toString());
                            playbackBloc.add(PlaybackEvent.call(
                              id: state.soundtrack[index].id.toString(),
                              type: state.soundtrack[index].category,
                            ));
                            context.push(RouteNames.movieDetail);
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
