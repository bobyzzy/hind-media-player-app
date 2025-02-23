import 'package:flutter/material.dart';

import 'package:hind_app/features/category/presentation/widgets/custom_tab_grid_view_content.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class MovieGeneratedScreen extends StatelessWidget {
  final MovieGenScreenArgs args;
  const MovieGeneratedScreen({
    super.key,
    required this.args,
  });

  //TODO: Нужно добавить кнопку нажатие на фильм
  //TODO: Нужно изменить грид на 2 элемента и добавить тайтл
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args.appbarTitle, style: AppFonts.MEDIUM_18),
      ),
      body: CustomTabGridViewContent(data: args.data),
    );
  }
}

class MovieGenScreenArgs {
  final String appbarTitle;
  final int itemCount;
  final List<dynamic> data;
  const MovieGenScreenArgs({
    required this.appbarTitle,
    required this.data,
    required this.itemCount,
  });
}
