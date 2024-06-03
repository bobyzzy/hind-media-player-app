import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';

class CustomTabGridViewContent extends StatefulWidget {
  final List<dynamic> data;
  const CustomTabGridViewContent({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<CustomTabGridViewContent> createState() => _CustomTabGridViewContentState();
}

class _CustomTabGridViewContentState extends State<CustomTabGridViewContent>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    widget.data.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return GridView.builder(
      padding: EdgeInsets.all(12),
      itemCount: widget.data.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) {
        var rating = double.parse(widget.data[index].rating);
        var colorOfBox = AppColors.TEXT_RED_COLOR;
        if (rating >= 7.0) {
          colorOfBox = Color.fromRGBO(0, 230, 64, 1);
        } else if (rating < 7.0 && rating > 5.0) {
          colorOfBox = AppColors.FILM_GANRE_GRAY_TEXT;
        } else {
          colorOfBox = AppColors.TEXT_RED_COLOR;
        }
        return GestureDetector(
          onTap: () {
            context
                .read<PlaybackCubit>()
                .call((widget.data[index].id.toString()), widget.data[index].category)
                .then((value) => context.pushRoute(MovieDetailRoute()));
          },
          child: Center(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CachedNetworkImage(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          imageUrl: widget.data[index].thumbnail,
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Image.asset(
                            'assets/images/background_placeholder.png',
                            fit: BoxFit.cover,
                          ),
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
                                widget.data[index].rating,
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
                      widget.data[index].title,
                      style: AppFonts.BOLD_14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
