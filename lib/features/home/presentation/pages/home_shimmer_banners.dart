import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmerBanners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(20),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade700,
            highlightColor: Colors.grey.shade800,
            child: ShimmerFlutterCarousel(),
          ),
          const Gap(30),
          ShimmerTitle(),
          const Gap(24),
          ShimmerWatchItem(),
          const Gap(50),
          ShimmerTitle(),
          const Gap(16),
          ShimmerFilmList(),
          const Gap(30),
          ShimmerTitle(),
          const Gap(16),
          ShimmerFilmList(),
          const Gap(30),
          ShimmerTitle(),
          const Gap(16),
          ShimmerFilmList(),
          const Gap(30),
          ShimmerTitle(),
          const Gap(16),
          ShimmerFilmList(),
        ],
      ),
    );
  }
}

class ShimmerFilmList extends StatelessWidget {
  const ShimmerFilmList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade700,
      highlightColor: Colors.grey.shade800,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: MediaQuery.of(context).size.height * 0.30,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          primary: false,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ShimmerTitle extends StatelessWidget {
  const ShimmerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade700,
      highlightColor: Colors.grey.shade800,
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        margin: EdgeInsets.symmetric(horizontal: 24),
        height: 15,
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class ShimmerWatchItem extends StatelessWidget {
  const ShimmerWatchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade700,
      highlightColor: Colors.grey.shade800,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: MediaQuery.of(context).size.height * 0.2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height * .2,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ShimmerFlutterCarousel extends StatelessWidget {
  const ShimmerFlutterCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: 5,
      itemBuilder: (context, index, realIndex) {
        return Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
      options: CarouselOptions(
        indicatorMargin: 12,
        allowImplicitScrolling: true,
        autoPlay: true,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.ease,
        floatingIndicator: false,
        enlargeCenterPage: true,
        slideIndicator: CircularWaveSlideIndicator(),
        viewportFraction: 0.85,
        height: MediaQuery.of(context).size.height * 0.45,
      ),
    );
  }
}
