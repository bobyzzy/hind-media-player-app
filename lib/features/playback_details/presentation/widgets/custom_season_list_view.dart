
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';
import 'package:hind_app/gen/assets.gen.dart';

class CustomSeasonListViewBuilder extends StatelessWidget {
  final List<EpisodesEntity> episodes;

  const CustomSeasonListViewBuilder({super.key, required this.episodes});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: episodes.length,
      itemBuilder: (context, index) {
        return Container(
          width: width,
          height: height * 0.15,
          margin: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: width * 0.45,
                  height: height * 0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.maxFinite,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_10)),
                          child: CachedNetworkImage(
                            imageUrl: '', //TODO: Add image
                            placeholder: (context, url) {
                              return Image.asset(
                                Assets.images.backgroundPlaceholder.path,
                                width: 300,
                                fit: BoxFit.cover,
                              );
                            },
                            errorWidget: (context, url, error) {
                              return Image.asset(
                                Assets.images.backgroundPlaceholder.path,
                                width: 300,
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                        ),
                        Assets.icons.redPlayButton.svg(),
                      ],
                    ),
                  )),
              Gap(20),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      episodes[index].title,
                      style: AppFonts.REGULAR_16,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '${episodes[index].number} qism',
                      style: AppFonts.REGULAR_16.copyWith(
                        color: AppColors.DETAIL_PAGE_TEXT_GRAY_COLOR,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
