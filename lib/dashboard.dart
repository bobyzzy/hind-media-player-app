import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/core/widgets/no_internet_widget.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:hind_app/features/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:hind_app/gen/assets.gen.dart';

class Dashboard extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const Dashboard({
    super.key,
    required this.navigationShell,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    context.read<AuthBloc>().add(AuthEvent.checkAuth());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.connectionStatus == ConnectionStatus.disconnected) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Internetga ulanish yoqoldi')),
          );
        }
      },
      builder: (context, state) {
        if (state.connectionStatus == ConnectionStatus.connected) {
          return Scaffold(
            body: widget.navigationShell,
            bottomNavigationBar: MyBottomNavigationBar(
              navigationShell: widget.navigationShell,
            ),
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
  final StatefulNavigationShell navigationShell;
  const MyBottomNavigationBar({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    // final tabsRouter = AutoTabsRouter.of(context);
    // final bool hiddenBottomNavBar =
    //     context.topRoute.meta['isHiddenBottomBar'] ?? false;
    return
        // hiddenBottomNavBar
        //     ? SizedBox()
        //     :
        BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: navigationShell.currentIndex,
      onTap: navigationShell.goBranch,
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
