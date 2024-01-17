import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_state.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_to_box_adapter.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_tab_grid_view_content.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_textfield.dart';
import 'package:hind_app/theme/app_colors.dart';

@RoutePage(name: "CategoryScreenRoute")
class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final List<String> icons = [
    'assets/icons/drama.png',
    'assets/icons/melodrama.png',
    'assets/icons/fantastic.png',
    'assets/icons/thriller.png',
    'assets/icons/horror.png',
    'assets/icons/comedy.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<GenreDataCubit, GenreDataState>(
          builder: (context, state) {
            if (state is GenreDataLoaded) {
              return DefaultTabController(
                length: 5,
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      CustomSliverAppBar(
                        toolbarHeight: 70,
                        expandedHeight: 70,
                        pinned: true,
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        title: CustomTextField(
                          hintText: 'Filmlar, seriallar...',
                          hasBorder: true,
                          hasIcon: true,
                          onChanged: (value) {},
                        ),
                        tabs: [
                          Tab(text: 'Barchasi'),
                          Tab(text: 'Filmlar'),
                          Tab(text: 'Seriallar'),
                          Tab(text: 'Tv Shou'),
                          Tab(text: 'Soundract'),
                        ],
                      ),
                      CustomSLiverToBoxAdapter(
                        data: state.genres,
                        onPressed: (isActive) {
                          print(isActive);
                        },
                      )
                    ];
                  },
                  body: TabBarView(
                    children: [
                      CustomTabGridViewContent(data: state.allData),
                      CustomTabGridViewContent(data: state.movies),
                      CustomTabGridViewContent(data: state.series),
                      CustomTabGridViewContent(data: state.series),
                      CustomTabGridViewContent(data: state.series),
                    ],
                  ),
                ),
              );
            } else if (state is GenreDataError) {
              return Container(child: Text('error'));
            } else if (state is GenreDataEmpty) {
              return Center(child: Text("Malumotlar yoq"));
            } else if (state is GenreDataLoading) {
              return Center(child: CircularProgressIndicator(color: AppColors.TEXT_RED_COLOR));
            } else {
              throw ArgumentError();
            }
          },
        ),
      ),
    );
  }
}

List<Widget> buildListGenres(List<CategoryGenreEntity> data) {
  return data.map((e) => Tab(text: e.name)).toList();
}
