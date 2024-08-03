
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_cubit.dart';

class LogOutBottomSheet extends StatelessWidget {
  const LogOutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.3,
      width: context.width,
      padding: EdgeInsets.all(AppDimens.PADDING_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Akkauntdan chiqilsinmi?',
            style: AppFonts.SEMI_BOLD_20,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomButton(
                  hasIcon: false,
                  isBold: false,
                  textButton: 'Bekor qilish',
                  color: Colors.white,
                  labelColor: Colors.black,
                  onTap: () {
                    context.popRoute();
                  },
                ),
              ),
              Gap(10),
              Expanded(
                child: CustomButton(
                  hasIcon: false,
                  isBold: true,
                  textButton: 'Chiqish',
                  color: AppColors.TEXT_RED_COLOR,
                  labelColor: Colors.white,
                  onTap: () {
                    context.read<AuthCubit>().logOut();
                    context.popRoute();
                  },
                ),
              )
            ],
          ),
          Gap(30),
        ],
      ),
    );
  }
}
