import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';

import 'authorized_profile_screen.dart';
import 'unauthorized_profile_screen.dart';

class ProfileNavigation extends StatelessWidget {
  const ProfileNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        log(state.authStatus.toString());
        if (state.authStatus == AuthStatus.AUTHORIZED) {
          return AuthProfileScreen();
        } else {
          return UnathorizedProfileScreen();
        }
      },
    );
  }
}
