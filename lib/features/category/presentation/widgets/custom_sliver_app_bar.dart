import 'package:flutter/material.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class CustomSliverAppBar extends StatelessWidget {
  final List<Widget> tabs;
  final Widget? title;
  final double expandedHeight;
  final double toolbarHeight;
  final bool pinned;
  final bool isScrollable;
  final TabAlignment tabAlignment;
  final Widget? leading;
  const CustomSliverAppBar({
    super.key,
    this.title,
    this.leading,
    required this.tabs,
    required this.expandedHeight,
    required this.toolbarHeight,
    required this.pinned,
    required this.isScrollable,
    required this.tabAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.BACKGROUND_COLOR, //изменил
      automaticallyImplyLeading: false,
      leading: leading,
      toolbarHeight: 100,
      pinned: pinned,
      title: title,
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 64),
        centerTitle: false,
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
