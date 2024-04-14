import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CustomCarousel extends StatelessWidget {
  final int itemCount;
  final List<String> images;
  final Function()? onTap;
  const CustomCarousel({
    super.key,
    required this.itemCount,
    required this.images,
    required this.onTap,
  });

  //TODO: при интеграции поменять метод добавления изоброжения
  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: itemCount,
      itemBuilder: (context, index, realIndex) {
        return InkWell(
          onTap: onTap,
          child: Ink(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: CachedNetworkImage(
                placeholder: (context, url) =>
                    Image.asset('assets/images/background_placeholder.png', fit: BoxFit.cover),
                imageUrl: images[index],
                width: MediaQuery.of(context).size.width * 0.95,
                fit: BoxFit.cover,
              ),
            ),
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
