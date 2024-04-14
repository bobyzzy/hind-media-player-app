import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class CategoryNavigationScreen extends StatelessWidget {
  const CategoryNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
