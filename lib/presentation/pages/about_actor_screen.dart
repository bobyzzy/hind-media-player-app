import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_dimens.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';

import '../widgets/widgets.dart';

@RoutePage()
class AboutActorScreen extends StatelessWidget {
  const AboutActorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Gap(30),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/03.jpg'),
                            ),
                          ),
                        ),
                        const Gap(20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Shokhruh Khan',
                                style: AppFonts.MEDIUM_20,
                              ),
                              const Gap(15),
                              Text(
                                'Aktyor, 59 yosh',
                                style: AppFonts.REGULAR_16.copyWith(
                                  color: AppColors.TEXT_GRAY_SHADE_COLOR,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(30),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Amarning qiz do'sti yo'q edi, chunki u shu paytgacha umrining qolgan qismini o'tkazishga tayyor bo'lgan odamni uchratmagan edi.Bir kuni u sayohatga ketayotib, temir yo'l platformasida ko'zini uzolmay qolgan go'zallikka e'tibor beradi. Taqdir bu yoshlarni tug'diradi.",
                      maxLines: AppDimens.MAX_LINES_6,
                      overflow: TextOverflow.clip,
                      style: AppFonts.REGULAR_18.copyWith(
                        color: AppColors.TEXT_WHITE_SHADE_COLOR,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Divider(
                      color: AppColors.DIVIDER_COLOR,
                    ),
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text('Filmlar', style: AppFonts.MEDIUM_24),
                  ),
                  const Gap(30),
                ],
              ),
            ),
          ];
        },
        body: GridView.builder(
          itemCount: 30,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return CustomFilmItem(
              hasTitle: false,
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
