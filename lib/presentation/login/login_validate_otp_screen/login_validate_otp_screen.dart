import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login/login_validate_otp_screen/notifier/login_validate_otp_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/app_bar/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/app_bar/custom_pin_code_text_field.dart';

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
    super.initState();
    _otpController = TextEditingController();
    final notifier = ref.read(loginValidateOtpCodeNotifier.notifier);
    notifier.initController(_otpController);
  }

  late bool _isDisable;
  late TextEditingController _otpController;
  @override
  Widget build(BuildContext context) {
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
                    onPressed: () =>
                        onTapScreenTitle(AppRoutes.loginSetNameScreen),
                  ),
                  SizedBox(height: 5.v)
                ]))));
  }
}
