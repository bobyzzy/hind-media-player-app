import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:hind_app/features/auth/presentation/bloc/ticker_cubit/ticker_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_bloc.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_bloc.dart';
import 'package:hind_app/features/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_cubit.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/search/presentation/bloc/search_bloc.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/service_locator.dart';

class BlocScope extends StatelessWidget {
  final Widget child;

  const BlocScope({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => sl<HomeBloc>()..add(HomeEvent.init())),
      BlocProvider(create: (context) => sl<SearchBloc>()),
      BlocProvider(
        create: (context) => sl<CategoryBloc>()..add(LoadCategoryDataEvent()),
      ),
      BlocProvider(create: (context) => sl<CategoryByGenreBloc>()),
      BlocProvider(create: (context) => sl<StreamCubit>()),
      BlocProvider(create: (context) => sl<PlaybackBloc>()),
      BlocProvider(create: (context) => sl<ProfileBloc>()),
      BlocProvider(create: (context) => sl<AuthBloc>()),
      BlocProvider(create: (context) => sl<TickerCubit>()),
    ], child: child);
  }
}
