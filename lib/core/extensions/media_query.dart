import 'package:flutter/material.dart';

extension ForMediaQuery on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
}
