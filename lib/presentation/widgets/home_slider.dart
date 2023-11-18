import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
    required this.images,
    required this.onTap,
  });

  final List<String> images;
  final Function()? onTap;

  //TODO: при интеграции поменять метод добавления изоброжения
  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) {
        return InkWell(
          onTap: onTap,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/01.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        indicatorMargin: 12,
        autoPlay: true,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
        floatingIndicator: false,
        enlargeCenterPage: true,
        slideIndicator: CircularWaveSlideIndicator(),
        viewportFraction: 0.85,
        height: MediaQuery.of(context).size.height * 0.45,
      ),
    );
  }
}
