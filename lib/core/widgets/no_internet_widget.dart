import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../theme/app_fonts.dart';

class ConnectionErrorWidget extends StatelessWidget {
  const ConnectionErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            'Internet yo\'q, iltimos internetga ulaning',
            style: AppFonts.REGULAR_20,
            textAlign: TextAlign.center,
          ),
        ),
        Lottie.asset(
          'assets/icons/no_internet_connection.json',
          width: MediaQuery.of(context).size.width * 0.8,
        ),
      ],
    ),
  );
  }
}
