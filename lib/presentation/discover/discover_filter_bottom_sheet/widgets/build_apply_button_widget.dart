part of '../discover_filter_bottom_sheet.dart';

Widget _buildApply(BuildContext context) {
  return CustomElevatedButton(
    width: 156.h,
    text: LocalizationKeys.lblApply.name.tr,
    buttonTextStyle: CustomTextStyles.bodyMediumBoldWhite,
    onPressed: () => onTapScreenTitle(AppRoutes.datingMatchScreen),
  );
}
