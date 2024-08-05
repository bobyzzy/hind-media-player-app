import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/user_profile/domain/entities/user_favorites_get_response.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/gen/assets.gen.dart';

class UserFavoritesItemWidget extends StatelessWidget {
  final List<FavoritePlaybackDataEntity> userFavorites;
  const UserFavoritesItemWidget({
    super.key,
    required this.userFavorites,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userFavorites.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(16),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: AppColors.BUTTON_BLACK_COLOR,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                width: 105,
                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: userFavorites[index].thumbnail,
                  errorWidget: (context, url, error) => Image.asset(
                    Assets.images.backgroundPlaceholder.path,
                    fit: BoxFit.cover,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      userFavorites[index].title,
                      maxLines: 2,
                      style: AppFonts.MEDIUM_16.copyWith(height: 1.4),
                    ),
                    SizedBox(height: 10),
                    userFavorites[index].genreName != null
                        ? Container(
                            constraints: BoxConstraints.loose(Size(100, 30)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(78, 74, 74, 1),
                            ),
                            child: Center(
                              child: Text(
                                userFavorites[index].genreName ?? '',
                                style: AppFonts.REGULAR_14
                                    .copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
                              ),
                            ),
                          )
                        : SizedBox(),
                    SizedBox(height: 10),
                    userFavorites[index].duration != null
                        ? RichText(
                            text: TextSpan(
                              text: 'Vaqt: ',
                              style: AppFonts.REGULAR_14
                                  .copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
                              children: [
                                TextSpan(
                                    text: userFavorites[index].duration, style: AppFonts.MEDIUM_14),
                              ],
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: PopupMenuButton<Text>(
                  color: Colors.white,
                  iconColor: Colors.white,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Center(
                          child: Text(
                            'o\'chirish',
                            style: AppFonts.REGULAR_14.copyWith(color: Colors.black),
                          ),
                        ),
                        onTap: () {
                          context.read<ProfileCubit>().deleteFavoritePlayback(
                                userFavorites[index].category,
                                userFavorites[index].id,
                              );
                        },
                      )
                    ];
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
