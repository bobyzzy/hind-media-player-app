import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';
import 'package:hind_app/routes/app_router.gr.dart';

import '../widgets.dart';


class WatchedFilmSection extends StatelessWidget {
  const WatchedFilmSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tomosha qilishni davom eting',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppFonts.MEDIUM_24.copyWith(color: Colors.white)),
          const Gap(20),
          SizedBox(
            width: double.infinity,
            height: height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return WatchedFilmItem(
                  onTap: () {
                    context.router.push(VideoPlayerRoute());
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
