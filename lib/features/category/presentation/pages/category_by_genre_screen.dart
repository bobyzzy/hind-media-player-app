import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_bloc.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_tab_grid_view_content.dart';

class CategoryByGenreScreen extends StatelessWidget {
  const CategoryByGenreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CategoryByGenreBloc, CategoryByGenreState>(
        builder: (context, state) {
          if (state.status == Status.loaded) {
            return CustomTabGridViewContent(data: state.data);
          } else if (state.status == Status.loading) {
            return Center(
              child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.white),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
