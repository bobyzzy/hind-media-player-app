import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/features/user_profile/presentation/widgets/user_favorites_item.dart';
import 'package:hind_app/gen/assets.gen.dart';

class SelectedPlaybackScreen extends StatefulWidget {
  const SelectedPlaybackScreen({super.key});

  @override
  State<SelectedPlaybackScreen> createState() => _SelectedPlaybackScreenState();
}

class _SelectedPlaybackScreenState extends State<SelectedPlaybackScreen> {
  late ProfileBloc profileBloc;

  @override
  void initState() {
    profileBloc = context.read<ProfileBloc>();
    profileBloc.add(ProfileEvent.getFavorites());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        log(state.favorites.toString());
        return Scaffold(
          backgroundColor: AppColors.BACKGROUND_COLOR,
          body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  CustomSliverAppBar(
                    expandedHeight: 10,
                    toolbarHeight: 10,
                    pinned: false,
                    isScrollable: false,
                    tabAlignment: TabAlignment.fill,
                    leading: IconButton(
                        onPressed: () => context.pop(),
                        icon: Icon(Icons.arrow_back_ios_new)),
                    title: Text(
                      'Tanlangan Filmlar',
                      style: AppFonts.MEDIUM_18,
                    ),
                    tabs: [
                      Tab(text: 'Tanlanganlar'),
                      Tab(text: 'Tarix'),
                    ],
                  )
                ];
              },
              body: TabBarView(
                children: [
                  state.status == Status.loaded
                      ? UserFavoritesItemWidget(userFavorites: state.favorites)
                      : CircularProgressIndicator.adaptive(),
                  ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: AppDimens.MARGIN_16,
                          vertical: AppDimens.MARGIN_8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: context.height * 0.3,
                              child: Stack(
                                children: [
                                  Container(
                                    width: context.width,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: CachedNetworkImage(
                                      imageUrl: '',
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                        Assets
                                            .images.backgroundPlaceholder.path,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Center(
                                      child: Assets.icons.redPlayButton.svg(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(8),
                            Text('Shriya Saran', style: AppFonts.MEDIUM_20),
                            Gap(8),
                            Text(
                              '1 mavsum, 3 qism',
                              style: AppFonts.REGULAR_16.copyWith(
                                  color: AppColors.TEXT_GENRE_GRAY_COLOR),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
