import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/movies_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/search_bloc/search_cubit.dart';
import 'package:hind_app/theme/app_theme.dart';
import 'package:hind_app/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'service_locator.dart' as di;

import 'service_locator.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<HomeCubit>()..loadData()),
        BlocProvider(create: (context) => sl<SearchCubit>()),
        BlocProvider(create: (context) => sl<GenreDataCubit>()..loadGenreData())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        routerConfig: AppRouter().config(
          navigatorObservers: () => [MyObserver()],
        ),
      ),
    );
  }
}
