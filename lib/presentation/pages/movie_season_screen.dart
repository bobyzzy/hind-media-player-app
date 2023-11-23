import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

import '../widgets/widgets.dart';

@RoutePage()
class MovieSeasonScreen extends StatelessWidget {
  const MovieSeasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        //TODO!: remove background color
        appBar: AppBar(
          backgroundColor: AppColors.BACKGROUND_COLOR,
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: AppColors.TEXT_GRAY_SHADE_COLOR,
            indicator: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            labelStyle: AppFonts.MEDIUM_16,
            labelPadding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              CustomTab(text: '1 mavsum'),
              CustomTab(text: '2 mavsum'),
              CustomTab(text: '3 mavsum'),
              CustomTab(text: '4 mavsum'),
            ],
          ),
        ),
        backgroundColor: AppColors.BACKGROUND_COLOR,
        body: TabBarView(
          children: [
            CustomSeasonListViewBuilder(),
            CustomSeasonListViewBuilder(),
            CustomSeasonListViewBuilder(),
            CustomSeasonListViewBuilder(),
          ],
        ),
        floatingActionButton: CustomFloatingActionButton(
          text: 'Tomosha qilish, 1 mavsum, 1 qism',
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String text;
  const CustomTab({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Center(child: Text(text)),
      ),
    );
  }
}

class CustomSeasonListViewBuilder extends StatelessWidget {
  const CustomSeasonListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          width: width,
          height: height * 0.15,
          margin: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 0.45,
                height: height * 0.13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/02.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Image.asset('assets/icons/play_button.png'),
                ),
              ),
              Gap(20),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Katta o‘yin', style: AppFonts.REGULAR_16),
                  Text(
                    '1 mavsum 1 qism',
                    style: AppFonts.REGULAR_16.copyWith(
                      color: AppColors.DETAIL_PAGE_TEXT_GRAY_COLOR,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
