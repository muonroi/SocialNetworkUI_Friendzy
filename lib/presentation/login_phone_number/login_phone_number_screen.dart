import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login_phone_number/notifier/login_phone_number_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/app_bar/appbar_leading_iconbutton.dart';
import 'package:muonroi_friends/widget/app_bar/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/app_bar/custom_image_view.dart';
import 'package:muonroi_friends/widget/app_bar/custom_text_form_field.dart';
import 'package:muonroi_friends/widget/onboarding/button/build_continue_widget.dart';
part 'widgets/build_appbar_widget.dart';
part 'widgets/build_country_code_widget.dart';

final countryProvider = StateProvider<Country>((ref) {
  return Country(
    isoCode: "VN",
    phoneCode: "84",
    name: "Vietnam",
    iso3Code: "VNM",
  );
});

class LoginPhoneNumberScreen extends StatefulWidget {
  const LoginPhoneNumberScreen({super.key});
  @override
  State<LoginPhoneNumberScreen> createState() => _LoginPhoneNumberScreenState();
}

class _LoginPhoneNumberScreenState extends State<LoginPhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
                child: Column(children: [
                  Text(LocalizationKeys.msgEnterYourNumber.name.tr,
                      style: CustomTextStyles.headlineSmallPrimary),
                  SizedBox(height: 22.v),
                  Consumer(builder: (context, ref, _) {
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
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a phone number';
                                  } else if (!RegExp(r'^\d{10}$')
                                      .hasMatch(value)) {
                                    return 'Please enter a valid 10-digit phone number';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  const Spacer(flex: 30),
                  buildContinueContainer(
                      context,
                      LocalizationKeys.lblContinue.name.tr,
                      () => onTapScreenTitle(AppRoutes.onboardingThreeScreen)),
                  const Spacer(flex: 69)
                ]))));
  }
}
