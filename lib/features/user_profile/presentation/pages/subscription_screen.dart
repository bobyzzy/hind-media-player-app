import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/core/routes/route_names.dart';

import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_dimens.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:hind_app/gen/assets.gen.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(ProfileEvent.getSubscription());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.status == Status.loaded) {
          return Scaffold(
            backgroundColor: AppColors.SUBSCRIPTION_BACKGROUND_COLOR,
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: AppColors.SUBSCRIPTION_BACKGROUND_COLOR,
                  leading: IconButton(
                    icon: Assets.icons.xIc.svg(),
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      'Ta’rif rejalar',
                      style: AppFonts.MEDIUM_36
                          .copyWith(color: AppColors.TEXT_RED_COLOR),
                    ),
                  ),
                ),
                SliverGap(20),
                SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      'Kurslarimiz uchun turli xil tariflarni tanlashingiz mumkin. Har bir tarif sizning o\'qish ehtiyojlaringizga mos keladi.',
                      style: AppFonts.REGULAR_16,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SliverList.builder(
                  itemCount: state.subcription.length,
                  itemBuilder: (context, index) {
                    return PaymentRatesWidget(
                      paymentPlanText: state.subcription[index].name,
                      paymentPlanAmount:
                          state.subcription[index].price.toString(),
                      paymentPlanDuration: state.subcription[index].trafficType,
                      benefitsBuilder: Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.subcription[index].benefits.length,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, indexBenefits) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Text(
                              state.subcription[index].benefits[indexBenefits]
                                  .name,
                              style: AppFonts.REGULAR_16,
                            ),
                            leading: Assets.icons.doneIc.svg(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: AppColors.SUBSCRIPTION_BACKGROUND_COLOR,
            appBar: AppBar(
              backgroundColor: AppColors.SUBSCRIPTION_BACKGROUND_COLOR,
              elevation: 0,
              leading: IconButton(
                icon: Assets.icons.xIc.svg(),
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }
      },
    );
  }
}

class PaymentRatesWidget extends StatelessWidget {
  final String paymentPlanText;
  final String paymentPlanAmount;
  final String paymentPlanDuration;
  final Widget benefitsBuilder;
  const PaymentRatesWidget({
    super.key,
    required this.paymentPlanText,
    required this.paymentPlanAmount,
    required this.paymentPlanDuration,
    required this.benefitsBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppDimens.MARGIN_16, vertical: AppDimens.MARGIN_16),
      padding: EdgeInsets.all(AppDimens.PADDING_20),
      height: context.height * 0.5,
      width: context.width,
      decoration: BoxDecoration(
        color: AppColors.BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(10),
          Text(
            paymentPlanText,
            style:
                AppFonts.SEMI_BOLD_18.copyWith(color: AppColors.TEXT_RED_COLOR),
          ),
          Gap(10),
          RichText(
            text: TextSpan(
              text: '$paymentPlanAmount uzs ',
              style: AppFonts.SEMI_BOLD_24,
              children: [
                TextSpan(
                    text: '/ $paymentPlanDuration',
                    style: AppFonts.SEMI_BOLD_20),
              ],
            ),
          ),
          benefitsBuilder,
          Material(
            borderRadius: BorderRadius.circular(AppDimens.BORDER_RADIUS_10),
            child: CustomButton(
              hasIcon: false,
              isBold: true,
              textButton: 'Tanlash',
              color: Colors.white,
              labelColor: Colors.black,
              onTap: () {
                context.push(RouteNames.payment);
              },
            ),
          )
        ],
      ),
    );
  }
}
