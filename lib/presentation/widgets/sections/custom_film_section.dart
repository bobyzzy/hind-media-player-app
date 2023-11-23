import 'package:flutter/material.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

class CustomFilmSection extends StatelessWidget {
  const CustomFilmSection({
    super.key,
    required this.headerText,
    required this.itemCount,
    required this.navigateButton,
    required this.itemBuilder,
  });

  final String headerText;
  final int itemCount;
  final void Function()? navigateButton;
  final Widget? Function(BuildContext buildContext, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TextButton(
            onPressed: navigateButton,
            child: Text(
              headerText,
              style: AppFonts.MEDIUM_18.copyWith(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height * 0.30,
          child: ListView.builder(
            itemCount: itemCount,
            scrollDirection: Axis.horizontal,
            primary: false,
            itemBuilder: itemBuilder,
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            color: Color.fromRGBO(69, 69, 69, 1),
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
