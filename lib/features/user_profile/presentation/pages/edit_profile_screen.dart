import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/features/category/presentation/widgets/custom_textfield.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/gen/assets.gen.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text('Profil sozlamalari', style: AppFonts.REGULAR_18),
            leading: IconButton(
                onPressed: () => context.router.pop(),
                icon: Assets.icons.arrowLeftIc.svg(color: Colors.white54)),
            toolbarOpacity: 0.1,
          ),
          
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: context.width,
                height: 150,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await context.read<ProfileCubit>().pickImage(ImageSource.gallery);
                      },
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_10)),
                          child: state.file == null
                              ? Image.asset(
                                  Assets.images.backgroundPlaceholder.path,
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  state.file ?? File(''),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                    Positioned(
                      height: 20,
                      width: 20,
                      bottom: 20,
                      left: context.width * 0.6,
                      child: Assets.icons.editIc.svg(),
                    ),
                  ],
                ),
              ),
              Gap(50),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Ism', style: AppFonts.MEDIUM_16),
              ),
              Gap(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomTextField(
                  hintText: 'Malika',
                  hasIcon: false,
                  hasBorder: true,
                  fillcolor: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  onChanged: (value) {},
                ),
              ),
              Gap(30),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Telefon raqami', style: AppFonts.MEDIUM_16),
              ),
              Gap(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomTextField(
                  hintText: '+998334412499',
                  hasIcon: false,
                  hasBorder: true,
                  fillcolor: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 50,
            margin: EdgeInsets.all(AppDimens.MARGIN_24),
            child: CustomButton(
              hasIcon: false,
              isBold: false,
              textButton: 'Tasdiqlash',
              color: Colors.white,
              labelColor: Colors.black,
              onTap: () {},
            ),
          ),
        );
      },
    );
  }
}
