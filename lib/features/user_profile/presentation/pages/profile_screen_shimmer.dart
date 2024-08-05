import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/gen/assets.gen.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreenShimmer extends StatelessWidget {
  const ProfileScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Shimmer.fromColors(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          baseColor: AppColors.SHIMMER_BASECOLOR,
          highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
        ),
        actions: [
          Shimmer.fromColors(
            baseColor: AppColors.SHIMMER_BASECOLOR,
            highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
            child: Container(
              width: MediaQuery.of(context).size.width * .2,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Gap(20),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Gap(10),
            Row(
              children: [
                Shimmer.fromColors(
                  baseColor: AppColors.SHIMMER_BASECOLOR,
                  highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Gap(20),
                Shimmer.fromColors(
                  baseColor: AppColors.SHIMMER_BASECOLOR,
                  highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Gap(15),
                      Container(
                        height: 15,
                        width: MediaQuery.of(context).size.width * .4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(24),
            Shimmer.fromColors(
              baseColor: AppColors.SHIMMER_BASECOLOR,
              highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
              child: Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Gap(30),
            Expanded(
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Shimmer.fromColors(
                    baseColor: AppColors.SHIMMER_BASECOLOR,
                    highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Assets.icons.arrowRightIc.svg()
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: AppColors.DIVIDER_COLOR,
                  );
                },
                itemCount: 7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
