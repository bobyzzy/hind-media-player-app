// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_state.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class CustomSLiverToBoxAdapter extends StatelessWidget {
  final List<CategoryGenreEntity> data;

  CustomSLiverToBoxAdapter({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    var currentPage = DefaultTabController.of(context).index.toString();
    var cubit = context.read<CategoryByGenreCubit>();

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 20),
            child: Text("Janrlar", style: AppFonts.MEDIUM_18),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, left: 8, bottom: 16),
            height: 90,
            child: BlocBuilder<CategoryByGenreCubit, CategoryByGenreState>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        cubit.fetchData((index + 1).toString(), currentPage);
                        context.router.push(CategoryByGenreRoute());
                      },
                      child: Container(
                        width: 90,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.BUTTON_BLACK_COLOR,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              //TODO: CHANGE TO NETWORK ICONS
                              child: Image.asset(
                                'assets/icons/drama.png',
                                width: 28,
                                height: 28,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Gap(5),
                            Text(
                              data[index].name,
                              style: AppFonts.OUTFIT_REGULAR_12.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
