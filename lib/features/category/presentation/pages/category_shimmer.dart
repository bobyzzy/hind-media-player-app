import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:shimmer/shimmer.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
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
              title: CategorySearchShimmer(),
              tabs: [
                CategoryTabShimmer(),
                CategoryTabShimmer(),
                CategoryTabShimmer(),
                CategoryTabShimmer(),
                CategoryTabShimmer(),
              ],
            ),
            CategoryGenresShimmer(),
          ];
        },
        body: Shimmer.fromColors(
          baseColor: AppColors.SHIMMER_BASECOLOR,
          highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
          child: GridView.builder(
            padding: EdgeInsets.all(12),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Gap(10),
                  Container(
                    width: MediaQuery.of(context).size.width * .2,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class CategoryGenresShimmer extends StatelessWidget {
  const CategoryGenresShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: AppColors.SHIMMER_BASECOLOR,
            highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
            child: Container(
              width: MediaQuery.of(context).size.width * .2,
              height: 15,
              margin: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Shimmer.fromColors(
            baseColor: AppColors.SHIMMER_BASECOLOR,
            highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
            child: Container(
              height: 90,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategorySearchShimmer extends StatelessWidget {
  const CategorySearchShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Container(
        width: double.maxFinite,
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class CategoryTabShimmer extends StatelessWidget {
  const CategoryTabShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        width: 70,
        height: 15,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
