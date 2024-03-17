part of '../../home_make_friend_tab_screen/home_make_friend_tab_screen.dart';

PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
    height: 56.v,
    title: AppbarTitle(
      text: LocalizationKeys.lblFriendzy.name.tr,
      margin: EdgeInsets.only(left: 16.h),
    ),
    actions: [
      AppbarTrailingIconbutton(
        imagePath: ImageConstant.imgIconPrimary48x48,
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 4.v,
        ),
      ),
    ],
  );
}
