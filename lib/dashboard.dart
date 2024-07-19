import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/core/widgets/no_internet_widget.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/home_bloc/home_cubit.dart';
import 'package:hind_app/gen/assets.gen.dart';

@RoutePage(name: "DashboardRoute")
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    context.read<AuthCubit>().checkAuth();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.connectionStatus == ConnectionStatus.disconnected) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Internetga ulanish yoqoldi')),
          );
        }
      },
      builder: (context, state) {
        if (state.connectionStatus == ConnectionStatus.connected) {
          return AutoTabsRouter(
            routes: <PageRouteInfo>[
              const HomeScreenRoute(),
              CategoryScreenRoute(),
              const ProfileNavigation(),
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
        } else if (state.connectionStatus == ConnectionStatus.disconnected) {
          return Scaffold(body: ConnectionErrorWidget());
        } else if (state.failure is ServerFailure) {
          return Container(); //TODO: simulate 502 error
        } else {
          return Container();
        }
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
                icon: Assets.icons.homeIc.svg(),
                activeIcon: Assets.icons.homeIc.svg(color: Colors.white),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.categoryIc.svg(),
                activeIcon: Assets.icons.categoryIc.svg(color: Colors.white),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.profileIc.svg(color: Colors.grey),
                activeIcon: Assets.icons.profileIc.svg(),
                label: 'Cabinet',
              ),
            ],
          );
  }
}
