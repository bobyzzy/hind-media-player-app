import 'package:flutter/material.dart';
import 'package:hind_app/theme/app_colors.dart';
import 'package:hind_app/theme/app_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomFilmItem extends StatelessWidget {
  final bool hasTitle;
  final String imageAsset;
  final String? titleText;
  final Function()? onTap;

  const CustomFilmItem({
    super.key,
    required this.hasTitle,
    this.titleText,
    required this.onTap,
    required this.imageAsset,
  });

  //TODO: поменять метод добавления изображения
  @override
  Widget build(BuildContext context) {
    var titleTextToDouble = double.parse(titleText!);
    var colorOfBox = Colors.red;
    if (titleTextToDouble >= 7.0) {
      colorOfBox = Colors.green;
    } else if (titleTextToDouble < 7.0 && titleTextToDouble > 5.0) {
      colorOfBox = Colors.grey;
    } else {
      colorOfBox = Colors.red;
    }
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * 0.4,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: CachedNetworkImage(
                placeholder: (context, url) {
                  return const FlutterLogo();
                },
                imageUrl: imageAsset,
                fit: BoxFit.cover,
                height: height * 0.5,
                width: width * 0.4,
              ),
            ),
            Positioned(
              top: 10,
              left: 8,
              child: hasTitle
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      constraints: BoxConstraints.loose(const Size.fromWidth(140)),
                      decoration: BoxDecoration(
                        color: colorOfBox,
                      ),
                      child: Text(
                        titleText!,
                        style: AppFonts.BOLD_14.copyWith(color: Colors.white),
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
