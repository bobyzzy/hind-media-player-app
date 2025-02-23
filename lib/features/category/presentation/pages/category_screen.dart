import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/routes/route_names.dart';

import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_state.dart';
import 'package:hind_app/features/category/presentation/pages/category_shimmer.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_to_box_adapter.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_tab_grid_view_content.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/category/presentation/widgets/soundtrack_tab_grid_view_widget.dart';
import 'package:lottie/lottie.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            if (state is CategoryDataLoaded) {
              return DefaultTabController(
                length: 6,
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      CustomSliverAppBar(
                        toolbarHeight: 70,
                        expandedHeight: 70,
                        pinned: true,
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        title: GestureDetector(
                          onTap: () => context.push(RouteNames.search),
                          child: Container(
                            height: 70,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.SEARCH_BAR_BACKGROUND_COLOR,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/search_ic.svg'),
                                Gap(12),
                                Text(
                                  'Filmlar, seriallar...',
                                  style: AppFonts.REGULAR_16.copyWith(
                                      color: AppColors.TEXT_FIELD_ICON_COLOR),
                                ),
                              ],
                            ),
                          ),
                        ),
                        tabs: [
                          Tab(text: 'Barchasi'),
                          Tab(text: 'Filmlar'),
                          Tab(text: 'Seriallar'),
                          Tab(text: 'Tv & Shou'),
                          Tab(text: 'Hindiston haqida'),
                          Tab(text: 'Soundtrek')
                        ],
                      ),
                      CustomSLiverToBoxAdapter(data: state.genres)
                    ];
                  },
                  //TODO:БАГ выводит один и те же данные
                  body: TabBarView(
                    children: [
                      CustomTabGridViewContent(data: state.allData),
                      CustomTabGridViewContent(data: state.movies),
                      CustomTabGridViewContent(data: state.series),
                      CustomTabGridViewContent(data: state.tvShou),
                      CustomTabGridViewContent(data: state.aboutIndia),
                      SoundracktGridViewContent(data: state.soundTrack),
                    ],
                  ),
                ),
              );
            } else if (state is CategoryDataError) {
              return Container(child: Text('error'));
            } else if (state is GenreDataEmpty) {
              return Center(child: Text("Malumotlar yoq"));
            } else if (state is CategoryDataLoading) {
              return CategoryShimmer();
            } else if (state is CategoryConnectionError) {
              return _connectionError(context);
            } else {
              throw ArgumentError();
            }
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

Widget _connectionError(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            'Internet yo\'q, iltimos internetga ulaning',
            style: AppFonts.REGULAR_20,
            textAlign: TextAlign.center,
          ),
        ),
        Lottie.asset(
          'assets/icons/no_internet_connection.json',
          width: MediaQuery.of(context).size.width * 0.8,
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
              context.read<CategoryCubit>().loadCategoryData();
            },
          ),
        )
      ],
    ),
  );
}

List<Widget> buildListGenres(List<CategoryGenreEntity> data) {
  return data.map((e) => Tab(text: e.name)).toList();
}
