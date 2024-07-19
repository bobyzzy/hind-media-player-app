import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/routes/app_router.gr.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_textfield.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/search/presentation/bloc/search_cubit.dart';
import 'package:hind_app/features/search/presentation/widgets/empty_search_widget.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

//TODO: По возможности реализовать задержку на запрос
//TODO: Если пользователь стерет все буквы то применять стейт на инитиал

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void dispose() {
    super.dispose();
  }

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
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Qidirish...',
                      hasBorder: false,
                      hasIcon: false,
                      onChanged: (value) async {
                        await context.read<SearchCubit>().search(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  if (state.status == Status.loaded && state.movies.length > 0) {
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
                          return GestureDetector(
                            onTap: () {
                              context.read<PlaybackCubit>().call(
                                    state.movies[index].id.toString(),
                                    state.movies[index].category,
                                  );
                              context.router.push(MovieDetailRoute());
                            },
                            child: ListTile(
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
                            ),
                          );
                        },
                      ),
                    );
                  } else if (state.status == Status.initial) {
                    return EmptySearchWidget(width: width, heigth: heigth);
                  } else if (state.movies.isEmpty || state.movies.length == 0) {
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
                      child: CircularProgressIndicator.adaptive(
                        backgroundColor: Colors.white,
                      ),
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
