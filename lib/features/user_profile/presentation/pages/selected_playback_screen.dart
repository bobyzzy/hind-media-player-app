import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:hind_app/gen/assets.gen.dart';

//TODO!: РЕАЛИЗОВАТЬ ДРОПДОВН БАТТОН И ОПТИМИЗАЦИЯ КОДА
@RoutePage()
class SelectedPlaybackScreen extends StatefulWidget {
  const SelectedPlaybackScreen({super.key});

  @override
  State<SelectedPlaybackScreen> createState() => _SelectedPlaybackScreenState();
}

class _SelectedPlaybackScreenState extends State<SelectedPlaybackScreen> {
  @override
  Widget build(BuildContext context) {
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
                    onPressed: () => context.router.pop(), icon: Icon(Icons.arrow_back_ios_new)),
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
              ListView.builder(
                itemCount: 10,
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
                          width: 104,
                          height: 104,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: '',
                            errorWidget: (context, url, error) => Image.asset(
                              Assets.images.backgroundPlaceholder.path,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Siz ayolsiz, yorug\'lik manbai.',
                                maxLines: 2,
                                style: AppFonts.MEDIUM_16.copyWith(height: 1.4),
                              ),
                              SizedBox(height: 10),
                              Container(
                                constraints: BoxConstraints.loose(Size(100, 30)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(78, 74, 74, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    'Romantik',
                                    style: AppFonts.REGULAR_14
                                        .copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Vaqt:',
                                  style: AppFonts.REGULAR_14
                                      .copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
                                  children: [
                                    TextSpan(text: ' 1 hr 50 mins', style: AppFonts.MEDIUM_14),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: PopupMenuButton<Text>(
                            color: Colors.white,
                            iconColor: Colors.white,
                            onSelected: (value) {
                              log('message');
                            },
                            onOpened: () {
                              log('message');
                            },
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(child: Text('1')),
                                PopupMenuItem(child: Text('2')),
                                PopupMenuItem(child: Text('3')),
                              ];
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
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
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                child: CachedNetworkImage(
                                  imageUrl: '',
                                  errorWidget: (context, url, error) => Image.asset(
                                    Assets.images.backgroundPlaceholder.path,
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
                          style:
                              AppFonts.REGULAR_16.copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
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
  }
}
