import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/widgets/no_internet_widget.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/home/presentation/bloc/home_screen_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/home_screen_bloc/home_state.dart';
import 'package:hind_app/features/home/presentation/pages/home_shimmer_banners.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_item.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_section.dart';
import 'package:hind_app/features/home/presentation/widgets/home_slider.dart';
import 'package:hind_app/features/home/presentation/widgets/watched_films_section.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

//TODO: Перенести экраны вложенные экраны то есть по рефакторить код

@RoutePage(name: "HomeScreenRoute")
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: AppDimens.PADDING_24),
          child: Text(
            "Salom Malika",
            style: AppFonts.SEMI_BOLD_20,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => context.router.push(SearchRoute()), icon: const Icon(Icons.search)),
          const SizedBox(width: 16),
        ],
      ),
      body: BlocConsumer<HomeCubit, HomePageState>(
        listener: (context, state) {
          if (state is HomePageConnectionError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Internetga ulanish yoqoldi')),
            );
          }
        },
        builder: (context, state) {
          if (state is HomePageMoviesLoaded) {
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
                                state.banners[index].movieOrSerisId.toString(),
                                state.banners[index].bannerType);

                            context.router.push(MovieDetailRoute());
                          },
                          child: Ink(
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                              child: CachedNetworkImage(
                                placeholder: (context, url) => Image.asset(
                                    'assets/images/background_placeholder.png',
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
                    const WatchedFilmSection(),
                    const Gap(50),
                    CustomFilmSection(
                      headerText: 'Eng ko\'p ko\'rilgan',
                      itemCount: state.movies.length,
                      navigateButton: () {
                        context.router.push(MovieGeneratedRoute(
                          appbarTitle: 'Eng ko\'p ko\'rilgan',
                          itemCount: 1,
                          data: state.movies,
                        ));
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
                  ],
                ),
              ),
            );
          } else if (state is HomePageConnectionError) {
            return ConnectionErrorWidget();
          } else if (state is HomePageLoading) {
            return HomeShimmerBanners();
          } else {
            return Center(
              child: Text("error"), //TODO: поменять на другое 
            );
          }
        },
      ),
    );
  }
}
