// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/features/category/domain/entities/category_genre_entity.dart';
import 'package:hind_app/theme/app_fonts.dart';

class CustomSLiverToBoxAdapter extends StatelessWidget {
  final List<CategoryGenreEntity> data;
  bool isActive = false;
  final Function(bool isActive) onPressed;

  CustomSLiverToBoxAdapter({
    super.key,
    required this.data,
    required this.onPressed,
  });

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
              itemCount: data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: onPressed(isActive),
                  child: Container(
                    width: 90,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isActive ? Colors.red : Colors.black,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          //TODO: CHANGE TO NETWORK ICONS
                          child: Image.asset(
                            'assets/icons/drama.png',
                            width: 28,
                            height: 28,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Gap(5),
                        Text(
                          data[index].name,
                          style: AppFonts.OUTFIT_REGULAR_12.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
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
