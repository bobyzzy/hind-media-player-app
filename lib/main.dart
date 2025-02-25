import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hind_app/core/bloc/bloc_observer.dart';
import 'package:hind_app/core/bloc/bloc_scope.dart';
import 'package:hind_app/core/routes/app_router.dart';
import 'package:hind_app/core/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'service_locator.dart';

final logger = sl<Logger>();

void main(List<String> args) async {
  await Future.delayed(Duration(seconds: 4));
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await init();
  Bloc.observer = sl<MyBlocObserver>();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    FlutterNativeSplash.remove();
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = sl<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return BlocScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        // routerDelegate: _appRouter.delegate(
        //   navigatorObservers: () => [MyObserver()],
        // ),
        // routeInformationParser: _appRouter.defaultRouteParser(),
        routerConfig: _appRouter.router,
      ),
    );
  }
}
