import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

import 'components.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 100,
      pinned: true,
      expandedHeight: 200,
      flexibleSpace: const FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 64),
        centerTitle: true,
        title: CustomTextField(hintText: 'Filmlar, seriallar...'),
      ),
      bottom: TabBar(
        isScrollable: false,
        indicatorColor: Colors.red,
        indicatorWeight: 3,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        unselectedLabelStyle: AppFonts.REGULAR_16
            .copyWith(color: AppColors.TAB_BAR_UNSELECT_COLOR),
        labelStyle: AppFonts.SEMI_BOLD_16,
        tabs: const [
          Tab(text: 'Barchasi'),
          Tab(text: 'Filmlar'),
          Tab(text: 'Seriallar'),
          Tab(text: 'Tv Shou'),
          Tab(text: 'Soundract'),
        ],
      ),
    );
  }
}
