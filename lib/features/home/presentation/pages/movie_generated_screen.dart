import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hind_app/theme/app_fonts.dart';

@RoutePage()
class MovieGeneratedScreen extends StatelessWidget {
  final String appbarTitle;
  final int itemCount;
  const MovieGeneratedScreen({
    super.key,
    required this.appbarTitle,
    required this.itemCount,
  });

  //TODO: Нужно добавить кнопку нажатие на фильм
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle, style: AppFonts.MEDIUM_18),
      ),
      body: GridView.builder(
        itemCount: itemCount,
        padding: EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage('assets/images/03.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
