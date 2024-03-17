part of '../../discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';

Widget _buildReset(BuildContext context) {
  return CustomElevatedButton(
    width: 155.h,
    text: LocalizationKeys.lblReset.name.tr,
    buttonStyle: CustomButtonStyles.fillWhite,
    buttonTextStyle: CustomTextStyles.titleMediumBluegray300,
  );
}
