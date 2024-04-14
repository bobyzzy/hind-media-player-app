import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_sliver_app_bar.dart';

//TODO!: РЕАЛИЗОВАТЬ ДРОПДОВН БАТТОН И ОПТИМИЗАЦИЯ КОДА
@RoutePage()
class SelectedFilmScreen extends StatefulWidget {
  const SelectedFilmScreen({super.key});

  @override
  State<SelectedFilmScreen> createState() => _SelectedFilmScreenState();
}

class _SelectedFilmScreenState extends State<SelectedFilmScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                expandedHeight: 10,
                toolbarHeight: 10,
                pinned: false,
                isScrollable: false,
                tabAlignment: TabAlignment.fill,
                leading: IconButton(
                    onPressed: () => context.router.pop(), icon: Icon(Icons.arrow_back_ios_new)),
                title: Text(
                  'Tanlangan Filmlar',
                  style: AppFonts.MEDIUM_18,
                ),
                tabs: [
                  Tab(text: 'Tanlanganlar'),
                  Tab(text: 'Tarix'),
                ],
              )
            ];
          },
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(16),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: AppColors.BUTTON_BLACK_COLOR,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(16),
                          width: 104,
                          height: 104,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/01.jpg'),
                              )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Siz ayolsiz, yorug\'lik manbai.',
                                maxLines: 2,
                                style: AppFonts.MEDIUM_16.copyWith(height: 1.4),
                              ),
                              SizedBox(height: 10),
                              Container(
                                constraints: BoxConstraints.loose(Size(100, 30)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(78, 74, 74, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    'Romantik',
                                    style: AppFonts.REGULAR_14
                                        .copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Vaqt:',
                                  style: AppFonts.REGULAR_14
                                      .copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
                                  children: [
                                    TextSpan(text: ' 1 hr 50 mins', style: AppFonts.MEDIUM_14),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: PopupMenuButton<Text>(
                            color: Colors.white,
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(child: Text('asd')),
                                PopupMenuItem(child: Text('asd')),
                                PopupMenuItem(child: Text('asd')),
                              ];
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: AppDimens.MARGIN_16,
                      vertical: AppDimens.MARGIN_8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/01.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset('assets/icons/play_button.png'),
                          ),
                        ),
                        Gap(8),
                        Text('Shriya Saran', style: AppFonts.MEDIUM_20),
                        Gap(8),
                        Text(
                          '1 mavsum, 3 qism',
                          style:
                              AppFonts.REGULAR_16.copyWith(color: AppColors.TEXT_GENRE_GRAY_COLOR),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
