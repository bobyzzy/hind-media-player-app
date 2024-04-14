import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';

@RoutePage(name: "HomeRoute")
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: <PageRouteInfo>[
        const HomeScreenRoute(),
        CategoryScreenRoute(),
        const ProfileScreenRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      builder: (context, child) {
        //final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: MyBottomNavigationBar(),
        );
      },
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final bool hiddenBottomNavBar = context.topRoute.meta['isHiddenBottomBar'] ?? false;
    return hiddenBottomNavBar
        ? SizedBox()
        : BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/House.png'),
                activeIcon: Image.asset(
                  'assets/icons/House.png',
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/category.png'),
                activeIcon: Image.asset(
                  'assets/icons/category.png',
                  color: Colors.white,
                ),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/person.png'),
                activeIcon: Image.asset(
                  'assets/icons/person.png',
                  color: Colors.white,
                ),
                label: 'Cabinet',
              ),
            ],
          );
  }
}
