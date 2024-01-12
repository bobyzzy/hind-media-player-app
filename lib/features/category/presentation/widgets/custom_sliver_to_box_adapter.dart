import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/theme/app_fonts.dart';

class CustomSLiverToBoxAdapter extends StatelessWidget {
  const CustomSLiverToBoxAdapter({
    super.key,
    required this.itemCount,
    required this.icons,
    required this.text,
  });

  final int itemCount;
  final List<String> icons;
  final List<String> text;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 20),
            child: Text("Janrlar", style: AppFonts.MEDIUM_18),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, left: 8, bottom: 16),
            height: 90,
            child: ListView.builder(
              itemCount: itemCount,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 90,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(46, 45, 47, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          icons[index],
                          width: 28,
                          height: 28,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        text[index],
                        style: AppFonts.OUTFIT_REGULAR_12
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
