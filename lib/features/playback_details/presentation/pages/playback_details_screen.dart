// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/playback_details/presentation/pages/playback_details_shimmer_banners.dart';
import 'package:hind_app/features/playback_details/presentation/widgets/playback_data_loaded.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('1')),
                PopupMenuItem(child: Text('2')),
                PopupMenuItem(child: Text('3')),
              ];
            },
          )
        ],
      ),
      body: BlocBuilder<PlaybackBloc, PlaybackState>(
        builder: (context, state) {
          if (state.status == Status.loaded) {
            return PlaybackDataLoadedWidget(data: state.data!);
          } else if (state.status == Status.loading) {
            return PlaybackDetailsShimmer();
          } else if (state.status == Status.error) {
            return Container();
          }
          return Container(
            child: Text(state.hashCode.toString()),
          );
        },
      ),
    );
  }
}
