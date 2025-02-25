import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hind_app/core/errors/failure.dart';
import 'package:hind_app/core/utils/enums.dart';
import 'package:hind_app/core/widgets/custom_button.dart';
import 'package:hind_app/core/theme/app_colors.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:hind_app/features/auth/presentation/bloc/ticker_cubit/ticker_cubit.dart';
import 'package:hind_app/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';

class PhoneVerificationScreen extends StatefulWidget {
  final String phoneNumber;
  const PhoneVerificationScreen({super.key, required this.phoneNumber});

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  late TickerCubit tickerCubit;

  @override
  void initState() {
    super.initState();
    tickerCubit = context.read<TickerCubit>();
    tickerCubit.startTimer();
  }

  @override
  void dispose() {
    tickerCubit.disposeTimer();
    super.dispose();
  }

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    return BlocBuilder<TickerCubit, TickerState>(
      builder: (context, tickerState) {
        return BlocBuilder<AuthBloc, AuthState>(
          builder: (context, authState) {
            if (authState.failure.runtimeType == OTPFailure &&
                tickerState.timerStatus == TimerStatus.PAUSED) {
              SchedulerBinding.instance.addPostFrameCallback((_) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog.adaptive(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.error_outline_rounded),
                          SizedBox(height: 5),
                          Text(
                              'Siz kiritgan kod togri emas, iltimos togri kod kiriting'),
                        ],
                      ),
                      actions: [
                        Platform.isIOS
                            ? CupertinoButton(
                                onPressed: () => context.pop(),
                                child: Text('Yopish'))
                            : TextButton(
                                onPressed: () => context.pop(),
                                child: Text('Yopish')),
                      ],
                    );
                  },
                );
              });
            } else if (authState.failure.runtimeType == OTPFailure &&
                tickerState.timerStatus == TimerStatus.END &&
                authState.status == Status.error) {
              SchedulerBinding.instance.addPostFrameCallback((_) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog.adaptive(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.error_outline_rounded),
                          SizedBox(height: 5),
                          Text('Qayta yuborish tugmasini bosing'),
                        ],
                      ),
                      actions: [
                        Platform.isIOS
                            ? CupertinoButton(
                                onPressed: () => context.pop(),
                                child: Text('Yopish'))
                            : TextButton(
                                onPressed: () => context.pop(),
                                child: Text('Yopish')),
                      ],
                    );
                  },
                );
              });
            }
            return Form(
              key: formkey,
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: AppColors.BACKGROUND_COLOR,
                body: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        _buildPhoneVerificationHeaderText(),
                        SizedBox(height: 10),
                        _buildPhoneVerificationInlineSpanText(
                            widget.phoneNumber),
                        _buildAnimatedImage(),
                        Pinput(
                          length: 6,
                          controller: otpController,
                          focusNode: focusNode,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          defaultPinTheme: PinTheme(
                            height: 60,
                            width: 50,
                            textStyle: AppFonts.BOLD_32,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: AppColors.TEXT_FIELD_BORDER_COLOR),
                              ),
                            ),
                          ),
                          submittedPinTheme: PinTheme(
                            height: 60,
                            width: 50,
                            padding: EdgeInsets.all(8),
                            textStyle: AppFonts.BOLD_32,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: AppColors
                                        .TEXT_FIELD_FILLED_BORDER_COLOR),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            tickerState.timerStatus == TimerStatus.END
                                ? GestureDetector(
                                    onTap: () {
                                      tickerCubit.resetTimer();
                                    },
                                    child: Container(
                                      width: 80,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors
                                                .DETAIL_PAGE_TEXT_GRAY_COLOR,
                                            width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Assets.icons.restartIc
                                          .svg(fit: BoxFit.scaleDown),
                                    ),
                                  )
                                : Container(
                                    width: 80,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors
                                              .DETAIL_PAGE_TEXT_GRAY_COLOR,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        tickerState.duration.toString(),
                                        style: AppFonts.MEDIUM_16,
                                      ),
                                    ),
                                  ),
                            SizedBox(width: 20),
                            tickerState.timerStatus == TimerStatus.END
                                ? Text(
                                    'Kodni qayta yuborish',
                                    style: AppFonts.REGULAR_14,
                                  )
                                : Text(
                                    'Kodni amal qilish muddati',
                                    style: AppFonts.REGULAR_14,
                                  ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: CustomButton(
                            hasIcon: false,
                            isBold: true,
                            textButton: 'Tasdiqlash',
                            color: Colors.white,
                            labelColor: Colors.black,
                            onTap: () async {
                              log(otpController.text);
                              formkey.currentState!.validate();
                              authBloc.add(AuthEvent.logIn(
                                onError: (value) {
                                  tickerCubit.onErrorLoginTimeStatus();
                                },
                                onSuccess: (value) {},
                                phoneNumber: widget.phoneNumber,
                                otp: otpController.text,
                              ));
                            },
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  LottieBuilder _buildAnimatedImage() {
    return LottieBuilder.asset(
      'assets/icons/phone_verification.json',
      width: 300,
      height: 300,
    );
  }

  Center _buildPhoneVerificationHeaderText() {
    return Center(
      child: Text(
        'Raqamni tasdiqlash',
        style: AppFonts.BOLD_24,
      ),
    );
  }

  RichText _buildPhoneVerificationInlineSpanText(String text) {
    return RichText(
      text: TextSpan(
        text: '+998 $text',
        style: AppFonts.BOLD_14,
        children: [
          TextSpan(
            text: ' raqamiga \n tasdiqlash kodini yubordik',
            style: AppFonts.REGULAR_14,
          ),
        ],
      ),
    );
  }
}
