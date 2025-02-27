import 'package:flutter/material.dart';

extension ForMediaQuery on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  ScaffoldMessengerState get scaffoldMessage => ScaffoldMessenger.of(this);
  Locale get appLocale => Localizations.localeOf(this);
  ScaffoldState get scaffoldState => Scaffold.of(this);
  ThemeData get theme => Theme.of(this);
}
