import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String textButton;
  final bool hasIcon;
  final bool isBold;
  final Color color;
  final Color labelColor;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.hasIcon,
    required this.isBold,
    required this.textButton,
    required this.color,
    required this.labelColor,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: hasIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    textButton,
                    style: isBold
                        ? AppFonts.BOLD_24.copyWith(color: labelColor)
                        : AppFonts.OUTFIT_SEMI_BOLD_14
                            .copyWith(color: labelColor),
                  ),
                  Icon(icon, color: labelColor),
                ],
              )
            : Center(
                child: Text(
                  textButton,
                  style: isBold
                      ? AppFonts.BOLD_24.copyWith(color: labelColor)
                      : AppFonts.REGULAR_24.copyWith(color: labelColor),
                ),
              ),
      ),
    );
  }
}
