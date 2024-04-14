import 'package:flutter/material.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class AppTheme {
  static final BOTTOM_NAVIGATION_BAR_THEME = BottomNavigationBarThemeData(
    backgroundColor: const Color.fromRGBO(46, 45, 47, 1),
    //TODO: Поменять шрифт на Poppins_14
    unselectedLabelStyle: AppFonts.REGULAR_14.copyWith(fontSize: 10),
    unselectedItemColor: AppColors.BOTTOM_NAVIGATION_UNSELECTED_COLOR,
    selectedLabelStyle: AppFonts.MEDIUM_14.copyWith(fontSize: 10),
    selectedItemColor: Colors.white,
  );

  static final APPBAR_THEME = AppBarTheme(
    backgroundColor: AppColors.BACKGROUND_COLOR,
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 1,
    toolbarHeight: 60,
    titleTextStyle: AppFonts.REGULAR_18.copyWith(),
  );

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    iconButtonTheme: IconButtonThemeData(),
    scaffoldBackgroundColor: AppColors.BACKGROUND_COLOR,
    appBarTheme: APPBAR_THEME,
    bottomNavigationBarTheme: BOTTOM_NAVIGATION_BAR_THEME,
  );
}
