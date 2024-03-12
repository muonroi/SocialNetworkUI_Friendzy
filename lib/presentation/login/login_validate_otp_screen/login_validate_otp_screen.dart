import 'dart:async';

import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login/login_validate_otp_screen/notifier/login_validate_otp_notifier.dart';
import 'package:muonroi_friends/routes/arguments_key/arguments.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_pin_code_text_field.dart';

class LoginValidateOtpCodeScreen extends ConsumerStatefulWidget {
  const LoginValidateOtpCodeScreen({Key? key}) : super(key: key);
  @override
  LoginValidateOtpCodeScreenState createState() =>
      LoginValidateOtpCodeScreenState();
}

class LoginValidateOtpCodeScreenState
    extends ConsumerState<LoginValidateOtpCodeScreen> {
  @override
  void initState() {
    _isDisable = true;
    _otpController = TextEditingController();
    final notifier = ref.read(loginValidateOtpCodeNotifier.notifier);
    notifier.initController(_otpController);
    _secondsRemaining = 90;
    _startCountdownTimer();
    super.initState();
  }

  void _startCountdownTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  String _formatTime(int seconds) {
    final minutes = (seconds / 60).floor();
    final remainingSeconds = seconds % 60;
    final formattedMinutes = minutes < 10 ? '0$minutes' : '$minutes';
    final formattedSeconds =
        remainingSeconds < 10 ? '0$remainingSeconds' : '$remainingSeconds';
    return '$formattedMinutes:$formattedSeconds';
  }

  late bool _isDisable;
  late Timer _timer;
  late int _secondsRemaining;
  late TextEditingController _otpController;
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final bool isLoginMethod = args[ArgumentsKey.loginMethod];
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 18.v),
                child: Column(children: [
                  Text(LocalizationKeys.msgEnter4DigitsCode.name.tr,
                      style: CustomTextStyles.headlineSmallPrimary),
                  SizedBox(height: 54.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Consumer(builder: (context, ref, _) {
                        return CustomPinCodeTextField(
                            context: context,
                            controller: ref
                                .watch(loginValidateOtpCodeNotifier)
                                .otpController,
                            onChanged: (value) {
                              ref
                                  .watch(loginValidateOtpCodeNotifier)
                                  .otpController
                                  ?.text = value;
                              if (ref
                                      .watch(loginValidateOtpCodeNotifier)
                                      .otpController
                                      ?.text
                                      .length ==
                                  4) {
                                setState(() {
                                  _isDisable = false;
                                });
                              } else {
                                setState(() {
                                  _isDisable = true;
                                });
                              }
                            });
                      })),
                  Container(
                      width: 304.h,
                      margin: EdgeInsets.only(left: 12.h, right: 11.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    LocalizationKeys.msgEnterOtpCodeWe2.name.tr,
                                style: CustomTextStyles.bodyLargeb24b164c),
                            TextSpan(
                                text: "Your phone number. ",
                                style: CustomTextStyles.titleMediumff4b164c),
                            TextSpan(
                                text: LocalizationKeys
                                    .msgThisCodeWillExpired.name.tr,
                                style: CustomTextStyles.bodyLargeb24b164c),
                            TextSpan(
                                text: _formatTime(_secondsRemaining),
                                style: CustomTextStyles.bodyLargeffdd88cf)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 25.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: LocalizationKeys.msgDidNTReceived2.name.tr,
                            style: CustomTextStyles.bodyMediumb222172a),
                        const TextSpan(text: " "),
                        TextSpan(
                            text: LocalizationKeys.lblResendCode.name.tr,
                            style: CustomTextStyles.titleSmallffdd88cf_1)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 70.v),
                  CustomElevatedButton(
                    text: LocalizationKeys.lblVerify.name.tr,
                    margin: EdgeInsets.symmetric(horizontal: 17.h),
                    buttonTextStyle:
                        Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: appTheme.indigo50,
                              fontSize: 16.adaptSize,
                              fontWeight: FontWeight.w600,
                            ),
                    isDisabled: _isDisable,
                    onPressed: () => onTapScreenTitle(!isLoginMethod
                        ? AppRoutes.loginSetNameScreen
                        : AppRoutes.homeMakeFriendTabScreen),
                  ),
                  SizedBox(height: 5.v)
                ]))));
  }
}
