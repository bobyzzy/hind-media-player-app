import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

class CustomSliverAppBar extends StatelessWidget {
  final List<Widget> tabs;
  final Widget? title;
  final double expandedHeight;
  final double toolbarHeight;
  final bool pinned;
  final bool isScrollable;
  final TabAlignment tabAlignment;
  const CustomSliverAppBar(
      {super.key,
      this.title,
      required this.tabs,
      required this.expandedHeight,
      required this.toolbarHeight,
      required this.pinned,
      required this.isScrollable,
      required this.tabAlignment});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('asd'),
      backgroundColor: AppColors.BACKGROUND_COLOR, //изменил
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      pinned: pinned,
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 64),
        centerTitle: true,
        title: title,
      ),
      bottom: TabBar(
        tabAlignment: tabAlignment,
        isScrollable: isScrollable,
        indicatorColor: Colors.red,
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        indicatorWeight: 3,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        unselectedLabelStyle: AppFonts.REGULAR_16.copyWith(color: AppColors.TAB_BAR_UNSELECT_COLOR),
        labelStyle: AppFonts.SEMI_BOLD_16,
        tabs: tabs,
      ),
    );
  }
}
