part of '../onboarding_one_screen.dart';

/// Section Widget
Widget _buildSignInContainer(BuildContext context) {
  return CustomElevatedButton(
    text: LocalizationKeys.lblSignIn.name.tr,
    margin: EdgeInsets.symmetric(horizontal: 40.h),
    buttonStyle: CustomButtonStyles.fillPurple5002,
    buttonTextStyle: CustomTextStyles.titleMediumPrimary,
  );
}
