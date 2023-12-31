import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hind_app/presentation/pages/phone_verification_screen.dart';
import 'package:hind_app/presentation/pages/movie_season_screen.dart';
import 'package:hind_app/presentation/pages/sign_up_screen.dart';
import 'package:hind_app/presentation/theme/app_theme.dart';
import 'package:hind_app/routes/app_router.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(
      const MyApp(),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerConfig: AppRouter().config(
        navigatorObservers: () => [MyObserver()],
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(useMaterial3: true),
//       home: AllSeasonScreen(),
//     );
//   }
// }
