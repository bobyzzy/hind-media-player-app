import 'package:flutter/material.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.SUBSCRIPTION_BACKGROUND_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.SUBSCRIPTION_BACKGROUND_COLOR,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.PADDING_16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HindiUz mobile ilovasida Obuna uchun to‘lov',
              style: AppFonts.MEDIUM_24,
            )
          ],
        ),
      ),
    );
  }
}
