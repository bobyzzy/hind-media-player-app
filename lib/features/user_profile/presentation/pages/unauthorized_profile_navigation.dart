import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'UnathorizedProfileNavigator')
class UnathorizedProfileNavigator extends StatelessWidget {
  const UnathorizedProfileNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
