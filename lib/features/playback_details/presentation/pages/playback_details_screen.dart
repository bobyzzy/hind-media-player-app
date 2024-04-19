// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_state.dart';
import 'package:hind_app/features/playback_details/presentation/pages/playback_details_shimmer_banners.dart';
import 'package:hind_app/features/playback_details/presentation/widgets/playback_data_loaded.dart';

//TODO!: идет два запроса по эндпоинту а должен быть один ИСПРАВИТЬ
//TODO!: Написать обработчик типа приходящих данных
//TODO!: Написать обработчик ошибки соединения

@RoutePage()
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
                  PopupMenuItem(child: Text('asd')),
                  PopupMenuItem(child: Text('asd')),
                  PopupMenuItem(child: Text('asd')),
                ];
              },
            )
          ],
        ),
        body: BlocBuilder<PlaybackCubit, PlaybackState>(
          builder: (context, state) {
            if (state is PlaybackLoaded) {
              return PlaybackDataLoadedWidget(data: state.data);
            } else if (state is PlaybackLoading) {
              return PlaybackDetailsShimmer();
            } else if (state is PlaybackError) {
              return Container();
            }
            return Container(
              child: Text(state.hashCode.toString()),
            );
          },
        ));
  }
}
