import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_state.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_tab_grid_view_content.dart';
import 'package:hind_app/features/home/presentation/widgets/custom_film_item.dart';

@RoutePage()
class CategoryByGenreScreen extends StatelessWidget {
  const CategoryByGenreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<CategoryByGenreCubit, CategoryByGenreState>(
          builder: (context, state) {
            if (state is CategoryByGenreLoaded) {
              return CustomTabGridViewContent(data: state.data);
            } else if (state is CategoryByGenreLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container();
            }
          },
        ));
  }
}
