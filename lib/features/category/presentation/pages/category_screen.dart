import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_to_box_adapter.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_tab_grid_view_content.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_textfield.dart';


@RoutePage(name: "CategoryScreenRoute")
class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final List<String> icons = [
    'assets/icons/drama.png',
    'assets/icons/melodrama.png',
    'assets/icons/fantastic.png',
    'assets/icons/thriller.png',
    'assets/icons/horror.png',
    'assets/icons/comedy.png',
  ];

  final List<String> text = [
    'Drama',
    'Melodrama',
    'Fantastika',
    'Triller',
    'Ujas',
    'Comediya',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                CustomSliverAppBar(
                  toolbarHeight: 70,
                  expandedHeight: 70,
                  pinned: true,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  title: CustomTextField(
                    hintText: 'Filmlar, seriallar...',
                    hasBorder: true,
                    hasIcon: true,
                    onChanged: (value) {},
                  ),
                  tabs: [
                    Tab(text: 'Barchasi'),
                    Tab(text: 'Filmlar'),
                    Tab(text: 'Seriallar'),
                    Tab(text: 'Tv Shou'),
                    Tab(text: 'Soundract'),
                  ],
                ),
                CustomSLiverToBoxAdapter(
                  icons: icons,
                  text: text,
                  itemCount: icons.length,
                )
              ];
            },
            body: const TabBarView(
              children: [
                CustomTabGridViewContent(imageAsset: 'assets/images/01.jpg'),
                CustomTabGridViewContent(imageAsset: 'assets/images/02.jpg'),
                CustomTabGridViewContent(imageAsset: 'assets/images/03.jpg'),
                CustomTabGridViewContent(imageAsset: 'assets/images/04.jpg'),
                CustomTabGridViewContent(imageAsset: 'assets/images/01.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
