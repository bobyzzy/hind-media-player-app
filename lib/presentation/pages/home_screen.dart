import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

import '../../routes/app_router.gr.dart';
import '../widgets/widgets.dart';

import '../widgets/sections/utils.dart';

@RoutePage(name: "HomeScreenRoute")
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            "Salom Malika",
            style: AppFonts.SEMI_BOLD_20,
          ),
        ),
        actions: [
          //TODO: исправить иконку и нажатие на кнопку
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(width: 16),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          primary: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCarousel(
                images: const [
                  'assets/images/01.jpg',
                  'assets/images/01.jpg',
                  'assets/images/01.jpg',
                  'assets/images/01.jpg',
                  'assets/images/01.jpg',
                ],
                onTap: () {},
              ),
              const Gap(30),
              const WatchedFilmSection(),
              const Gap(50),
              CustomFilmSection(
                headerText: 'Eng ko\'p ko\'rilgan',
                itemCount: 20,
                navigateButton: () {},
                itemBuilder: (buildContext, index) {
                  return CustomFilmItem(
                    onTap: () {
                      context.tabsRouter.pushPathState(VideoPlayerRoute.page);
                    },
                    hasTitle: true,
                    titleText: 'New Season',
                  );
                },
              ),
              const Gap(20),
              CustomFilmSection(
                headerText: 'Filmlar',
                itemCount: 20,
                navigateButton: () {
                  context.router.push(MovieGeneratedRoute(
                      appbarTitle: 'Filmlar', itemCount: 20));
                },
                itemBuilder: (buildContext, index) {
                  return CustomFilmItem(
                    onTap: () {},
                    hasTitle: true,
                    titleText: 'Exclusive',
                  );
                },
              ),
              const Gap(20),
              CustomFilmSection(
                headerText: 'Seriallar',
                itemCount: 20,
                navigateButton: () {
                  context.router.push(MovieGeneratedRoute(
                      appbarTitle: 'Seriallar', itemCount: 20));
                },
                itemBuilder: (buildContext, index) {
                  return CustomFilmItem(
                    onTap: () {},
                    hasTitle: true,
                    titleText: "new season",
                  );
                },
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
