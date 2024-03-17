part of '../discover_filter_bottom_sheet.dart';

Widget _buildLocation(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        LocalizationKeys.lblLocation.name.tr,
        style: theme.textTheme.titleMedium,
      ),
      const Spacer(),
      Padding(
        padding: EdgeInsets.only(top: 2.v),
        child: Text(
          LocalizationKeys.lblPeopleNearby.name.tr,
          style: CustomTextStyles.bodyLargeBluegray300,
        ),
      ),
      CustomImageView(
        imagePath: ImageConstant.imgArrowRight,
        height: 24.adaptSize,
        width: 24.adaptSize,
        margin: EdgeInsets.only(left: 8.h),
      ),
    ],
  );
}
