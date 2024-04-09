import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/widgets/no_internet_widget.dart';
import 'package:hind_app/features/home/presentation/bloc/home_screen_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/home_screen_bloc/home_state.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_item.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_section.dart';
import 'package:hind_app/features/home/presentation/widgets/home_slider.dart';
import 'package:hind_app/features/home/presentation/widgets/watched_films_section.dart';
import 'package:hind_app/theme/app_colors.dart';
import 'package:hind_app/theme/app_fonts.dart';

import '../../../../routes/app_router.gr.dart';

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
      body: BlocConsumer<HomeCubit, HomePageState>(
        listener: (context, state) {
          if (state is HomePageConnectionError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Internetga ulanish yoqoldi'),
              ),
            );
          }
        },
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
                        itemCount: 5,
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
                            data: state.movies,
                          ));
                        },
                        itemBuilder: (buildContext, index) {
                          return CustomFilmItem(
                            onTap: () {
                              context.router.push(
                                MovieDetailRoute(
                                  id: state.movies[index].id,
                                  title: state.movies[index].title,
                                  genre: state.movies[index].genreName,
                                  imageUrl: state.movies[index].thumbnail,
                                  year: state.movies[index].year,
                                  isSeries: false,
                                ),
                              );
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
                              appbarTitle: 'Seriallar', itemCount: 20, data: state.series));
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
            return ConnectionErrorWidget();
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
