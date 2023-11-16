import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

@RoutePage()
class MovieSeasonScreen extends StatelessWidget {
  const MovieSeasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text("Lion"),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: const Color.fromRGBO(170, 166, 183, 1),
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            padding: const EdgeInsets.all(5),
            indicator: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
            ),
            tabs:
                generateTabs(['1- mavsum', '2-mavsum', '3-mavsum', '4-mavsum']),
          ),
        ),
        body: TabBarView(
          children: [
            MovieSeasonItemListView(),
            MovieSeasonItemListView(),
            MovieSeasonItemListView(),
            MovieSeasonItemListView(),
          ],
        ),
      ),
    );
  }
}

List<Widget> generateTabs(List<String> tabsNames) {
  return tabsNames.map((title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontFamily: 'Gilroy'),
      ),
    );
  }).toList();
}

class MovieSeasonItemListView extends StatelessWidget {
  const MovieSeasonItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Container(
                width: 220,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/03.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Image.asset('assets/icons/play_button.png'),
                ),
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Katta o‘yin",
                    style: AppFonts.REGULAR_16,
                  ),
                  const Gap(10),
                  Text(
                    "1 mavsum, 2 qism",
                    style: AppFonts.MEDIUM_14
                        .copyWith(color: AppColors.DETAIL_PAGE_TEXT_GRAY_COLOR),
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
