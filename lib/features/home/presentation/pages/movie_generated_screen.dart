import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_tab_grid_view_content.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

@RoutePage()
class MovieGeneratedScreen extends StatelessWidget {
  final String appbarTitle;
  final int itemCount;
  final List<dynamic> data;
  const MovieGeneratedScreen({
    super.key,
    required this.appbarTitle,
    required this.data,
    required this.itemCount,
  });

  //TODO: Нужно добавить кнопку нажатие на фильм
  //TODO: Нужно изменить грид на 2 элемента и добавить тайтл
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle, style: AppFonts.MEDIUM_18),
      ),
      body: CustomTabGridViewContent(data: data),
    );
  }
}
