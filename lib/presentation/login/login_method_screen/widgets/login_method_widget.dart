part of '../login_method_screen.dart';

/// Section Widget
Widget _buildLoginWithGoogle(BuildContext context) {
  return CustomElevatedButton(
      text: LocalizationKeys.msgLoginWithGoogle.name.tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      leftIcon: Container(
          margin: EdgeInsets.only(right: 30.h),
          child: CustomImageView(
              imagePath: ImageConstant.imgFlatcoloriconsgoogle,
              height: 24.adaptSize,
              width: 24.adaptSize)),
      buttonStyle: CustomButtonStyles.fillOnErrorContainerTL28,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
      onPressed: () {
        onTapLoginWithGoogle(context);
      });
}

/// Section Widget
Widget _buildLoginWithApple(BuildContext context) {
  return CustomElevatedButton(
      text: LocalizationKeys.msgLoginWithApple.name.tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      leftIcon: Container(
          margin: EdgeInsets.only(right: 30.h),
          child: CustomImageView(
              imagePath: ImageConstant.imgAntdesignapplefilled,
              height: 24.adaptSize,
              width: 24.adaptSize)),
      buttonStyle: CustomButtonStyles.fillOnErrorContainerTL28,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary);
}

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) {
  NavigatorService.goBack();
}

onTapLoginWithGoogle(BuildContext context) async {
  await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
    if (googleUser != null) {
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('user data is empty')));
    }
  }).catchError((onError) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(onError.toString())));
  });
}
