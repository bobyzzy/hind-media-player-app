import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/theme/app_colors.dart';
import 'package:hind_app/theme/app_fonts.dart';

class CustomTabGridViewContent extends StatelessWidget {
  final List<dynamic> data;
  const CustomTabGridViewContent({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: aspectRatio,
        ),
        itemBuilder: (context, index) {
          var rating = double.parse(data[index].rating);
          var colorOfBox = AppColors.TEXT_RED_COLOR;
          if (rating >= 7.0) {
            colorOfBox = Color.fromRGBO(0, 230, 64, 1);
          } else if (rating < 7.0 && rating > 5.0) {
            colorOfBox = AppColors.FILM_GANRE_GRAY_TEXT;
          } else {
            colorOfBox = AppColors.TEXT_RED_COLOR;
          }
          return Center(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 15,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CachedNetworkImage(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          imageUrl: data[index].thumbnail,
                          fit: BoxFit.fill,
                          placeholder: (context, url) => FlutterLogo(),
                        ),
                        Positioned(
                          top: 10,
                          left: 8,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: colorOfBox,
                            child: Center(
                              child: Text(
                                data[index].rating,
                                style: AppFonts.BOLD_14.copyWith(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10),
                  Expanded(
                    flex: 2,
                    child: Text(
                      data[index].title,
                      style: AppFonts.BOLD_14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
