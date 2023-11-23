import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

class CustomFilmItem extends StatelessWidget {
  const CustomFilmItem({
    super.key,
    required this.hasTitle,
    this.titleText,
    required this.onTap,
  });

  final bool hasTitle;
  final String? titleText;
  final Function()? onTap;

  //TODO: поменять метод добавления изображения
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * 0.4,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.cover,
            opacity: 1,
            image: AssetImage('assets/images/02.jpg'),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 8,
              child: hasTitle
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      constraints:
                          BoxConstraints.loose(const Size.fromWidth(140)),
                      decoration: BoxDecoration(
                        color: AppColors.TITLE_RED_COLOR,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        titleText!,
                        style: AppFonts.OUTFIT_REGULAR_12
                            .copyWith(color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  : const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
