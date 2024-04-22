import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_cubit.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/home/presentation/bloc/home_screen_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_cubit.dart';
import 'package:hind_app/features/search/presentation/bloc/search_cubit.dart';
import 'package:hind_app/core/theme/app_theme.dart';
import 'package:hind_app/core/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import 'service_locator.dart' as di;

import 'service_locator.dart';

//TODO!: HandshakeException (HandshakeException: Handshake error in client (OS Error: WRONG_VERSION_NUMBER(tls_record.cc:231))) исправить баг
//TODO!: Добавить локалицаю
//TODO!: Написать extension для контекста чтобы брать ширину и высоту экрана
//TODO!: Вывести в переменные все пути к изображению
//TODO!: при изменении Локализации перенаправляет в начальный экран исправить

void main(List<String> args) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await di.init();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) {
    FlutterNativeSplash.remove();

    runApp(EasyLocalization(
      supportedLocales: [Locale('uz', 'UZ'), Locale('ru', 'RU')],
      path: 'assets/translations',
      startLocale: Locale('ru', 'RU'),
      child: MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<HomeCubit>()..init()),
        BlocProvider(create: (context) => sl<SearchCubit>()),
        BlocProvider(create: (context) => sl<CategoryCubit>()..loadCategoryData()),
        BlocProvider(create: (context) => sl<CategoryByGenreCubit>()),
        BlocProvider(create: (context) => sl<StreamCubit>()),
        BlocProvider(create: (context) => sl<PlaybackCubit>())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppTheme.theme,
        routerConfig: AppRouter().config(
          navigatorObservers: () => [MyObserver()],
        ),
      ),
    );
  }
}
