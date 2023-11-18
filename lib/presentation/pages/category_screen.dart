import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


@RoutePage(name: "CategoryScreenRoute")
class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  List<String> icons = [
    'assets/icons/drama.png',
    'assets/icons/melodrama.png',
    'assets/icons/fantastic.png',
    'assets/icons/thriller.png',
    'assets/icons/horror.png',
    'assets/icons/comedy.png',
  ];

  List<String> text = [
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
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(),
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
              CustomTabGridViewContent(
                imageAsset: 'assets/images/01.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
