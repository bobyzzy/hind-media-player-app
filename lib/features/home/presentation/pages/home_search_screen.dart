import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_textfield.dart';
import 'package:hind_app/features/home/presentation/bloc/search_bloc/search_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/search_bloc/search_state.dart';
import 'package:hind_app/theme/app_colors.dart';
import 'package:hind_app/theme/app_fonts.dart';

@RoutePage()
class HomeSearchScreen extends StatelessWidget {
  const HomeSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: AppColors.SEARCH_BAR_BACKGROUND_COLOR),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () => context.router.pop()
                        ..then((value) => context.read<SearchCubit>().dispose()),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Qidirish...',
                      hasBorder: false,
                      hasIcon: false,
                      onChanged: (value) async {
                        await Future.delayed(Duration(milliseconds: 500), () {
                          context.read<SearchCubit>().search(value);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  if (state is SearchDataLoaded) {
                    return Container(
                      child: ListView.builder(
                        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                        
                        itemCount: state.movies.length,
                        itemBuilder: (context, index) {
                          var colorOfBox = Colors.red;
                          var titleTextToDouble = double.parse(state.movies[index].rating);
                          if (titleTextToDouble >= 7.0) {
                            colorOfBox = Colors.green;
                          } else if (titleTextToDouble < 7.0 && titleTextToDouble > 5.0) {
                            colorOfBox = Colors.grey;
                          } else {
                            colorOfBox = Colors.red;
                          }
                          return ListTile(
                            isThreeLine: true,
                            dense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            leading: Image.network(state.movies[index].thumbnail),
                            title: Text(
                              state.movies[index].title,
                              style: AppFonts.REGULAR_14,
                            ),
                            subtitle: Text(state.movies[index].genreName),
                            trailing: Container(
                              color: colorOfBox,
                              padding: EdgeInsets.all(6),
                              child: Text(
                                state.movies[index].rating,
                                style: AppFonts.REGULAR_14,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else if (state is SearchEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.SEARCH_BAR_BACKGROUND_COLOR,
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Gap(20),
                        Container(
                          width: width * 0.75,
                          height: heigth * 0.07,
                          child: Text(
                            'Filmlar, aktyorlar, janrlar va boshqalarni qidirishingiz mumkin...',
                            style: AppFonts.REGULAR_14,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  } else if (state is SearchDataEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.SEARCH_BAR_BACKGROUND_COLOR,
                          ),
                          child: Icon(
                            Icons.do_disturb_alt_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Gap(20),
                        Container(
                          width: width * 0.75,
                          height: heigth * 0.07,
                          child: Text(
                            'Bu nomdagi ma\'lumotlar topilmadi',
                            style: AppFonts.REGULAR_14,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
