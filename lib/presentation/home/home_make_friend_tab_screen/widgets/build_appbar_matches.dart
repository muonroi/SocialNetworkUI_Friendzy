part of '../home_make_friend_tab_screen.dart';

PreferredSizeWidget _buildMatchesAppBar(BuildContext context) {
  return CustomAppBar(
      leadingWidth: 64.h,
      title: AppbarSubtitleOne(
          margin: EdgeInsets.only(left: 12.h),
          text: LocalizationKeys.lblMatches.name.tr),
      actions: [
        AppbarTrailingIconbutton(
            imagePath: ImageConstant.imgIconSettingDiscover,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              right: 18.h,
            ),
            onTap: () {}),
      ]);
}
