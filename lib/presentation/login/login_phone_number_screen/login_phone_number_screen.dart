import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login/login_phone_number_screen/notifier/login_phone_number_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/app_bar/custom_image_view.dart';
import 'package:muonroi_friends/widget/app_bar/custom_text_form_field.dart';
import 'package:muonroi_friends/widget/onboarding/button/build_continue_widget.dart';
part 'widgets/build_country_code_widget.dart';

class LoginPhoneNumberScreen extends ConsumerStatefulWidget {
  const LoginPhoneNumberScreen({super.key});
  @override
  LoginPhoneNumberScreenState createState() => LoginPhoneNumberScreenState();
}

class LoginPhoneNumberScreenState
    extends ConsumerState<LoginPhoneNumberScreen> {
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
                  Text(LocalizationKeys.msgEnterYourNumber.name.tr,
                      style: CustomTextStyles.headlineSmallPrimary),
                  SizedBox(height: 22.v),
                  Consumer(builder: (context, ref, _) {
                    void updateEmailValidation(value) {
                      setState(() {
                        _phoneValidationError = validatePhoneNumber(value)
                            ? "None"
                            : LocalizationKeys.msgInvalidPhoneNumber.name.tr;
                      });
                    }

                    return Container(
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
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
                                    .watch(loginPhoneNumberNotifier)
                                    .phoneNumberController,
                                borderDecoration: InputBorder.none,
                                textInputType: TextInputType.phone,
                                textStyle: CustomTextStyles.bodyLargePrimary,
                                width: 274.h,
                                hintText: LocalizationKeys.lbl84.name.tr,
                                hintStyle: CustomTextStyles.bodyLargeGray400,
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
                        style: TextStyle(color: Colors.red, fontSize: 12.v)),
                  ),
                  const Spacer(flex: 30),
                  buildContinueContainer(
                    context,
                    LocalizationKeys.lblContinue.name.tr,
                    () =>
                        onTapScreenTitle(AppRoutes.loginValidateOtpCodeScreen),
                    _phoneValidationError == "None",
                  ),
                  const Spacer(flex: 69)
                ]))));
  }
}
