import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hind_app/presentation/pages/empty_profile_screen.dart';
import 'package:hind_app/presentation/pages/profile_screen.dart';
import 'package:hind_app/routes/app_router.gr.dart';

@RoutePage()
class ProfileNavigationScreen extends StatelessWidget {
  const ProfileNavigationScreen({super.key});

  Future<bool> _isRegistered() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
