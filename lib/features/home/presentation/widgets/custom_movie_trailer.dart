import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

class CustomMovieTrailer extends StatelessWidget {
  const CustomMovieTrailer({super.key});

  //TODO: Поменять метод добавления изображения
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.30,
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
                  width: width * 0.7,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/02.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Image.asset('assets/icons/play_button.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text(
                    "Treyler N:${index + 1}",
                    style: AppFonts.REGULAR_16,
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    '1-mavsum, 2016',
                    style: AppFonts.REGULAR_14.copyWith(
                      color: AppColors.TEXT_GRAY_SHADE_COLOR,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
