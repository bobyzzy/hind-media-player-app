import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

void showSnackbar({
  required BuildContext context,
  required String message,
  required IconData icon,
  required Color backgroundColor,
}) {
  context.scaffoldMessage.showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      actionOverflowThreshold: 0.1,
      dismissDirection: DismissDirection.down,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              message,
              overflow: TextOverflow.ellipsis,
              style: AppFonts.OUTFIT_SEMI_BOLD_14.copyWith(color: Colors.white),
            ),
          ),
          Gap(10),
          Icon(icon, color: Colors.white)
        ],
      ),
    ),
  );
}
