import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/features/home/presentation/bloc/movies_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/movies_bloc/home_state.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_item.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_section.dart';
import 'package:hind_app/features/home/presentation/widgets/home_slider.dart';
import 'package:hind_app/features/home/presentation/widgets/watched_films_section.dart';
import 'package:hind_app/features/user_profile/presentation/widgets/custom_button.dart';
import 'package:hind_app/theme/app_colors.dart';
import 'package:hind_app/theme/app_fonts.dart';

import '../../../../routes/app_router.gr.dart';

@RoutePage(name: "HomeScreenRoute")
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            "Salom Malika",
            style: AppFonts.SEMI_BOLD_20,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => context.router.push(HomeSearchRoute()),
              icon: const Icon(Icons.search)),
          const SizedBox(width: 16),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomePageState>(
        builder: (context, state) {
          if (state is HomePageMoviesLoaded) {
            return RefreshIndicator(
              color: Colors.black,
              displacement: 0,
              triggerMode: RefreshIndicatorTriggerMode.onEdge,
              onRefresh: () async {
                await context.read<HomeCubit>().refresh();
              },
              child: Scrollbar(
                child: SingleChildScrollView(
                  primary: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(20),
                      CustomCarousel(
                        images: state.movies.map((e) => e.thumbnail).toList(),
                        onTap: () {},
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
                            itemCount: 5,
                            movies: state.movies,
                          ));
                        },
                        itemBuilder: (buildContext, index) {
                          return CustomFilmItem(
                            onTap: () {
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
                              appbarTitle: 'Filmlar', itemCount: 20, movies: state.movies));
                        },
                        itemBuilder: (buildContext, index) {
                          return CustomFilmItem(
                            onTap: () {},
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
                              appbarTitle: 'Seriallar', itemCount: 20, movies: state.movies));
                        },
                        itemBuilder: (buildContext, index) {
                          return CustomFilmItem(
                            onTap: () {},
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
              ),
            );
          } else if (state is HomePageConnectionError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ma\'lumotlar yuklanmadi',
                    style: AppFonts.REGULAR_20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
                    child: CustomButton(
                      hasIcon: false,
                      isBold: true,
                      textButton: 'Yangilash',
                      color: Colors.white,
                      labelColor: Colors.black,
                      onTap: () {
                        context.read<HomeCubit>().refresh();
                      },
                    ),
                  )
                ],
              ),
            );
          } else if (state is HomePageLoading) {
            return Center(
              child: CircularProgressIndicator(color: AppColors.TEXT_RED_COLOR),
            );
          } else {
            return Center(
              child: Text("error"),
            );
          }
        },
      ),
    );
  }
}
