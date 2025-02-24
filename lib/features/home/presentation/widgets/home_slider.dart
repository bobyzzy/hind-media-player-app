import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CustomCarousel extends StatelessWidget {
  final int itemCount;
  final List<String> images;
  final Widget Function(BuildContext context, int index, int realIndex)? itemBuilder;
  const CustomCarousel({
    super.key,
    required this.itemCount,
    required this.images,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      options: FlutterCarouselOptions(
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
