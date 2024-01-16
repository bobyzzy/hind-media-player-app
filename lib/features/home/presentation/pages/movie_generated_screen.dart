import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hind_app/features/home/domain/entities/movies_entity.dart';
import 'package:hind_app/theme/app_fonts.dart';

@RoutePage()
class MovieGeneratedScreen extends StatelessWidget {
  final String appbarTitle;
  final int itemCount;
  final List<MoviesEntity> movies;
  const MovieGeneratedScreen({
    super.key,
    required this.appbarTitle,
    required this.movies,
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
      body: GridView.builder(
        itemCount: movies.length,
        padding: EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: CachedNetworkImage(
              imageUrl: movies[index].thumbnail,
              fit: BoxFit.cover,
              placeholder: (context, url) => FlutterLogo(),
            ),
          );
        },
      ),
    );
  }
}
