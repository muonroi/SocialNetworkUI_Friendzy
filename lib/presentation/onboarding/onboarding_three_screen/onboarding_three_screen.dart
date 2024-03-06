import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

class OnboardingThreeScreen extends ConsumerStatefulWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );
  @override
  OnboardingThreeScreenState createState() => OnboardingThreeScreenState();
}

class OnboardingThreeScreenState extends ConsumerState<OnboardingThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 48.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 15.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 330.v,
                width: 400.h,
              ),
              SizedBox(height: 64.v),
              Container(
                width: 235.h,
                margin: EdgeInsets.symmetric(horizontal: 37.h),
                child: Text(
                  LocalizationKeys.msgLetsMeetingNew.name.tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    height: 1.30,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: LocalizationKeys.msgLoginWithPhone.name.tr,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: appTheme.gray5002, width: 5),
                    color: appTheme.gray5002,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: CustomImageView(
                    color: theme.colorScheme.primary,
                    imagePath: ImageConstant.imgIconPrimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonTextStyle: CustomTextStyles.titleMediumWhite,
                onPressed: () =>
                    onTapScreenTitle(AppRoutes.loginPhoneNumberScreen),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: LocalizationKeys.msgLoginWithGoogle.name.tr,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: appTheme.gray5002, width: 5),
                    color: appTheme.gray5002,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPurple5002,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 34.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: LocalizationKeys.msgDontHaveAnAccount2.name.tr,
                      style: CustomTextStyles.bodyMediumb222172a,
                    ),
                    TextSpan(
                      text: LocalizationKeys.lblSignUp.name.tr,
                      style: CustomTextStyles.titleSmallffdd88cf_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
