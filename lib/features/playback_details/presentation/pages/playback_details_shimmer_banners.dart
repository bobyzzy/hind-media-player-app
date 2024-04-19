import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class PlaybackDetailsShimmer extends StatelessWidget {
  const PlaybackDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: AppColors.SHIMMER_BASECOLOR,
            highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
            child: Container(
              height: MediaQuery.of(context).size.height * .3,
              color: Colors.black,
            ),
          ),
          const Gap(24),
          Center(
            child: Column(
              children: [
                PlaybackDetailsTitleShimmer(),
                const Gap(10),
                PlaybackDetailsGenreShimmer(),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        PlaybackDetailsSubtitleShimmer(),
                        const Gap(16),
                        PlaybackDetailsSubInfoShimmer(),
                      ],
                    ),
                    Column(
                      children: [
                        PlaybackDetailsSubtitleShimmer(),
                        const Gap(16),
                        PlaybackDetailsSubInfoShimmer(),
                      ],
                    ),
                    Column(
                      children: [
                        PlaybackDetailsSubtitleShimmer(),
                        const Gap(16),
                        PlaybackDetailsSubInfoShimmer(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(30),
          PlaybackDetailsTextShimmer(),
          const Gap(50),
          PlaybackDetailsButtonsShimmer(),
          const Gap(30),
          PlaybackDetailsSeriesSeasonsShimmer(),
          const Gap(24),
          const Divider(color: AppColors.DIVIDER_COLOR),
          const Gap(24),
          PlaybackDetailsTrailerTitleShimmer(),
          const Gap(20),
          PlaybackDetailsTrailerShimmer(),
          const Gap(20),
          const Divider(color: AppColors.DIVIDER_COLOR),
          const Gap(20),
        ],
      ),
    );
  }
}

class PlaybackDetailsTrailerShimmer extends StatelessWidget {
  const PlaybackDetailsTrailerShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 16),
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width * .2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      height: 10,
                      width: MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class PlaybackDetailsTrailerTitleShimmer extends StatelessWidget {
  const PlaybackDetailsTrailerTitleShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 15,
          width: MediaQuery.of(context).size.width * .3,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}

class PlaybackDetailsSeriesSeasonsShimmer extends StatelessWidget {
  const PlaybackDetailsSeriesSeasonsShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.SHIMMER_BASECOLOR,
                highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const Gap(10),
              Shimmer.fromColors(
                baseColor: AppColors.SHIMMER_BASECOLOR,
                highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
                child: Container(
                  width: MediaQuery.of(context).size.width * .25,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ],
          ),
          Shimmer.fromColors(
            baseColor: AppColors.SHIMMER_BASECOLOR,
            highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
            child: Container(
              width: MediaQuery.of(context).size.width * .15,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlaybackDetailsButtonsShimmer extends StatelessWidget {
  const PlaybackDetailsButtonsShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Shimmer.fromColors(
            baseColor: AppColors.SHIMMER_BASECOLOR,
            highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
            child: Container(
              margin: EdgeInsets.only(left: 12),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: AppColors.SHIMMER_BASECOLOR,
          highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
          child: Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(left: 12, right: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: AppColors.SHIMMER_BASECOLOR,
          highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
          child: Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(left: 8, right: 12),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}

class PlaybackDetailsTextShimmer extends StatelessWidget {
  const PlaybackDetailsTextShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          Random random = Random();
          final randomWidth = random.nextDouble() * MediaQuery.of(context).size.width * 0.8;
          return Shimmer.fromColors(
            baseColor: AppColors.SHIMMER_BASECOLOR,
            highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              height: 10,
              width: randomWidth,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaybackDetailsSubInfoShimmer extends StatelessWidget {
  const PlaybackDetailsSubInfoShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Container(
        height: 15,
        width: MediaQuery.of(context).size.width * .15,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class PlaybackDetailsSubtitleShimmer extends StatelessWidget {
  const PlaybackDetailsSubtitleShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Container(
        height: 15,
        width: MediaQuery.of(context).size.width * .25,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class PlaybackDetailsGenreShimmer extends StatelessWidget {
  const PlaybackDetailsGenreShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Container(
        height: 15,
        width: MediaQuery.of(context).size.width * .3,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class PlaybackDetailsTitleShimmer extends StatelessWidget {
  const PlaybackDetailsTitleShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.SHIMMER_BASECOLOR,
      highlightColor: AppColors.ShIMMER_HIGHLIGHT_COLOR,
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width * .6,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
