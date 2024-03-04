part of '../../onboarding_one_screen/onboarding_one_screen.dart';

/// Section Widget
Widget _buildContinueContainer(BuildContext context) {
  return CustomElevatedButton(
    text: LocalizationKeys.lblContinue.name.tr,
    margin: EdgeInsets.symmetric(horizontal: 40.h),
    buttonTextStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: appTheme.indigo50,
          fontSize: 16.adaptSize,
          fontWeight: FontWeight.w600,
        ),
  );
}
