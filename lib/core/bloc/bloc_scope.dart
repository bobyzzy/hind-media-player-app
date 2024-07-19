import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/home_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_cubit.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/search/presentation/bloc/search_cubit.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/service_locator.dart';

class BlocScope extends StatelessWidget {
  final Widget child;

  const BlocScope({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => sl<HomeCubit>()..init()),
      BlocProvider(create: (context) => sl<SearchCubit>()),
      BlocProvider(create: (context) => sl<CategoryCubit>()..loadCategoryData()),
      BlocProvider(create: (context) => sl<CategoryByGenreCubit>()),
      BlocProvider(create: (context) => sl<StreamCubit>()),
      BlocProvider(create: (context) => sl<PlaybackCubit>()),
      BlocProvider(create: (context) => sl<ProfileCubit>()),
      BlocProvider(create: (context) => sl<AuthCubit>()),
    ], child: child);
  }
}
