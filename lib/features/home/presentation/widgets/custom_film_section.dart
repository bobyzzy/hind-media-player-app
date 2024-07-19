import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';

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
          padding: EdgeInsets.symmetric(horizontal: AppDimens.PADDING_16),
          child: GestureDetector(
            onTap: navigateButton,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(headerText, style: AppFonts.MEDIUM_18.copyWith(color: Colors.white)),
                ),
                SvgPicture.asset('assets/icons/arrow_right_ic.svg')
              ],
            ),
          ),
        ),
        const Gap(16),
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
