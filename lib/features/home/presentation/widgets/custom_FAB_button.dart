import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const CustomFloatingActionButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(16),
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
        label: Row(
          children: [
            Text(
              'Tomosha qilish, 1 mavsum, 1 qism',
              style: AppFonts.OUTFIT_REGULAR_12.copyWith(fontSize: 14),
            ),
            Gap(10),
            Icon(Icons.play_arrow_rounded),
          ],
        ),
      ),
    );
  }
}
