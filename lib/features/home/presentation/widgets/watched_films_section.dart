import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/features/home/domain/entities/stream_entity.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_cubit.dart';
import 'package:hind_app/features/user_profile/presentation/widgets/watched_films_item.dart';
import 'package:hind_app/theme/app_fonts.dart';
import 'package:hind_app/routes/app_router.gr.dart';

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
              style: AppFonts.MEDIUM_18.copyWith(color: Colors.white)),
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
                    context.read<StreamCubit>().call('1');
                    context.router.push(VideoPlayerRoute(
                        streamEntity: StreamEntity(
                            title: 'Title',
                            file:
                                'http://hindi.uz:8070/media/media/movies/file_example_MP4_640_3MG.mp4')));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
