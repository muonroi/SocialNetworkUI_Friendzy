part of '../../login_phone_number/login_phone_number_screen.dart';

/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(left: 24.h, right: 311.h),
          onTap: () {
            onTapArrowLeft(context);
          }));
}

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) {
  NavigatorService.goBack();
}
