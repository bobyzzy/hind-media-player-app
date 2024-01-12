import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

import '../../../../presentation/widgets/widgets.dart';

class WatchedFilmItem extends StatelessWidget {
  final void Function()? onTap;
  const WatchedFilmItem({super.key, required this.onTap});

  // TODO: поменять метод добавления изоброжения
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * .7,
        height: height * .2,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/01.jpg'),
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/icons/play.png',
                width: 40,
                height: 40,
              ),
            ),
            Positioned(
              bottom: 35,
              right: 10,
              child: Text("38 min", style: AppFonts.ROBOTO_MEDIUM_12),
            ),
            Positioned(
              width: width * .7,
              height: 20,
              bottom: 10,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(right: 8),
                constraints: const BoxConstraints.expand(),
                child: const CustomStrokePainter(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
