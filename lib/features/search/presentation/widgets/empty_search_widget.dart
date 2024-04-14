
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class EmptySearchWidget extends StatelessWidget {
  const EmptySearchWidget({
    super.key,
    required this.width,
    required this.heigth,
  });

  final double width;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.SEARCH_BAR_BACKGROUND_COLOR,
          ),
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
        ),
        Gap(20),
        Container(
          width: width * 0.75,
          height: heigth * 0.07,
          child: Text(
            'Filmlar, aktyorlar, janrlar va boshqalarni qidirishingiz mumkin...',
            style: AppFonts.REGULAR_14,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
