part of '../discover_base_screen.dart';

Widget _buildInterest(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          LocalizationKeys.lblInterest.name.tr,
          style: CustomTextStyles.titleLargeOnPrimaryContainer,
        ),
        GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(
                LocalizationKeys.lblViewAll.name.tr,
                style: CustomTextStyles.bodyLargePurple200,
              ),
            ),
            onTap: () => onTapScreenTitle(AppRoutes.discoverInterestScreen)),
      ],
    ),
  );
}
