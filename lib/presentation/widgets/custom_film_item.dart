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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 180,
        width: 200,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.cover,
            opacity: 1,
            image: AssetImage('assets/images/01.jpg'),
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
                          BoxConstraints.loose(const Size.fromWidth(150)),
                      decoration: BoxDecoration(
                        color: AppColors.TITLE_RED_COLOR,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        titleText!,
                        style: AppFonts.OUTFIT_SEMI_BOLD_14
                            .copyWith(fontSize: 18, color: Colors.white),
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
