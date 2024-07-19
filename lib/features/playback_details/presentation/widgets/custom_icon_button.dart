import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onTap;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(46, 46, 48, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
