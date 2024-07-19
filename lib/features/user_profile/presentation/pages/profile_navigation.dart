import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_cubit.dart';

@RoutePage(name: 'ProfileNavigation')
class ProfileNavigation extends StatelessWidget {
  const ProfileNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        log(state.authStatus.toString());
        return AutoRouter.declarative(
          routes: (context) {
            if (state.authStatus == AuthStatus.AUTHORIZED) {
              return [
                AuthorizedProfileNavigator(),
              ];
            } else {
              return [
                UnathorizedProfileNavigator(),
              ];
            }
          },
        );
      },
    );
  }
}
