import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "AuthorizedProfileNavigator")
class AuthorizedProfileNavigator extends StatelessWidget {
  const AuthorizedProfileNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
