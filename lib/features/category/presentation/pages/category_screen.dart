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
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:lottie/lottie.dart';

@RoutePage(name: "CategoryScreenRoute")
class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> with AutomaticKeepAliveClientMixin {
//TODO!: Исправить скролл
//TODO!: Исправить баг при многократном нажатие на жанры открывается и закрывается ИСПРАВИТЬ
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            if (state is CategoryDataLoaded) {
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
                      CustomSLiverToBoxAdapter(data: state.genres)
                    ];
                  },
                  //TODO:БАГ выводит один и те же данные
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
            } else if (state is CategoryDataError) {
              return Container(child: Text('error'));
            } else if (state is GenreDataEmpty) {
              return Center(child: Text("Malumotlar yoq"));
            } else if (state is CategoryDataLoading) {
              return Center(child: CircularProgressIndicator(color: AppColors.TEXT_RED_COLOR));
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
