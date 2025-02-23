import 'package:flutter/material.dart';

import 'package:hind_app/features/home/presentation/widgets/custom_FAB_button.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/playback_details/domain/entities/playback_details_entity.dart';
import 'package:hind_app/features/playback_details/presentation/widgets/custom_season_list_view.dart';
import 'package:hind_app/features/playback_details/presentation/widgets/custom_tab_widget.dart';

class PlaybackSeasonScreen extends StatelessWidget {
  final List<SeasonsDataEntity> seasons;
  const PlaybackSeasonScreen({super.key, required this.seasons});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: seasons.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.BACKGROUND_COLOR,
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: AppColors.TEXT_GRAY_SHADE_COLOR,
            indicator: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            labelStyle: AppFonts.MEDIUM_16,
            labelPadding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: seasons
                .map((e) => CustomTab(text: "${e.number} mavsum"))
                .toList(),
          ),
        ),
        backgroundColor: AppColors.BACKGROUND_COLOR,
        body: TabBarView(
          children: seasons
              .map((e) =>
                  CustomSeasonListViewBuilder(episodes: e.episodes ?? []))
              .toList(),
        ),
        floatingActionButton: CustomFloatingActionButton(
          text: 'Tomosha qilish, 1 mavsum, 1 qism',
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
