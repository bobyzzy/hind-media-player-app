import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/routes/route_names.dart';

import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';

class SoundracktGridViewContent extends StatefulWidget {
  final List<dynamic> data;
  const SoundracktGridViewContent({
    super.key,
    required this.data,
  });

  @override
  State<SoundracktGridViewContent> createState() =>
      _SoundrackGridViewContentState();
}

class _SoundrackGridViewContentState extends State<SoundracktGridViewContent>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return GridView.builder(
      padding: EdgeInsets.all(12),
      itemCount: widget.data.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.read<PlaybackBloc>().add(
                  PlaybackEvent.call(
                    id: (widget.data[index].id.toString()),
                    type: widget.data[index].category,
                  ),
                );
            context.push(RouteNames.movieDetailCategory);
          },
          child: Center(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CachedNetworkImage(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          imageUrl: widget.data[index].thumbnail,
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Image.asset(
                            'assets/images/background_placeholder.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10),
                  Expanded(
                    flex: 2,
                    child: Text(
                      widget.data[index].title,
                      style: AppFonts.BOLD_14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
