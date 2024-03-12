import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/domain/googleauth/google_auth_helper.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login/login_method_screen/notifier/login_method_notifier.dart';
import 'package:muonroi_friends/presentation/login/login_phone_number_screen/login_phone_number_screen.dart';
import 'package:muonroi_friends/routes/arguments_key/arguments.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/custom_text_form_field.dart';
import 'package:muonroi_friends/widget/onboarding/button/build_continue_widget.dart';
part 'widgets/login_method_widget.dart';

class LoginMethodScreen extends ConsumerStatefulWidget {
  const LoginMethodScreen({Key? key}) : super(key: key);
  @override
  LoginMethodScreenState createState() => LoginMethodScreenState();
}

class LoginMethodScreenState extends ConsumerState<LoginMethodScreen> {
  @override
  void initState() {
    _phoneValidationError = "";
    super.initState();
  }

  bool validatePhoneNumber(String? phoneNumber) {
    RegExp regex =
        RegExp(r'^\+?(\d{1,3})?[-. (]?\d{3}[-. )]?\d{3}[-. ]?\d{4}$');
    return regex.hasMatch(phoneNumber ?? "");
  }

  late String _phoneValidationError;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Text(LocalizationKeys.lblLogin.name.tr,
                      style: CustomTextStyles.headlineSmallPrimary),
                  Opacity(
                      opacity: 0.7,
                      child: Text(LocalizationKeys.msgEnterYourPhone.name.tr,
                          style: CustomTextStyles.bodyLargePrimary)),
                  SizedBox(height: 24.v),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 18.v),
                      child: Column(children: [
                        Consumer(builder: (context, ref, _) {
                          void updateEmailValidation(value) {
                            setState(() {
                              _phoneValidationError = validatePhoneNumber(value)
                                  ? "None"
                                  : LocalizationKeys
                                      .msgInvalidPhoneNumber.name.tr;
                            });
                          }

                          return Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                16.h,
                              ),
                              border: Border.all(
                                color: appTheme.purple200,
                                width: 1.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: theme.colorScheme.errorContainer,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: const Offset(
                                    0,
                                    2,
                                  ),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                const CountryCode(),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      right: 5.h,
                                    ),
                                    child: CustomTextFormField(
                                      controller: ref
                                          .watch(loginMethodStateNotifier)
                                          .phoneNumberController,
                                      borderDecoration: InputBorder.none,
                                      textInputType: TextInputType.phone,
                                      textStyle:
                                          CustomTextStyles.bodyLargePrimary,
                                      width: 274.h,
                                      hintText: LocalizationKeys.lbl84.name.tr,
                                      hintStyle:
                                          CustomTextStyles.bodyLargeGray400,
                                      prefixConstraints: BoxConstraints(
                                        maxHeight: 24.v,
                                      ),
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 1.v),
                                      onChanged: (value) =>
                                          updateEmailValidation(value),
                                      errorMessage: _phoneValidationError,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                              _phoneValidationError != "None"
                                  ? _phoneValidationError
                                  : "",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 12.v)),
                        ),
                      ])),
                  SizedBox(height: 16.v),
                  const Spacer(flex: 30),
                  buildContinueContainer(
                    context,
                    LocalizationKeys.lblLogin.name.tr,
                    () =>
                        onTapScreenTitle(AppRoutes.loginValidateOtpCodeScreen, {
                      ArgumentsKey.loginMethod: true,
                    }),
                    _phoneValidationError != "None",
                  ),
                  SizedBox(height: 16.v),
                  Opacity(
                      opacity: 0.3,
                      child: Text(LocalizationKeys.lblOr.name.tr,
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainer)),
                  SizedBox(height: 16.v),
                  _buildLoginWithGoogle(context),
                  SizedBox(height: 16.v),
                  _buildLoginWithApple(context),
                  SizedBox(height: 34.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text:
                                LocalizationKeys.msgDontHaveAnAccount2.name.tr,
                            style: CustomTextStyles.bodyMediumb222172a),
                        TextSpan(
                            text: LocalizationKeys.lblSignUp.name.tr,
                            style: CustomTextStyles.titleSmallffdd88cf_1)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 20.v)
                ]))));
  }
}
