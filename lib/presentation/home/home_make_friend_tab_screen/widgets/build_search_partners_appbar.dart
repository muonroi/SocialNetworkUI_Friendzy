part of '../home_make_friend_tab_screen.dart';

PreferredSizeWidget _buildSearchPartnersAppBar(
    BuildContext context, WidgetRef ref) {
  return CustomAppBar(
    height: 60.v,
    title: CustomImageView(
      imagePath: ref.watch(homeMakeFriendsTabContainerNotifier).getImagePath(),
      height: 48.adaptSize,
      width: 48.adaptSize,
      margin: EdgeInsets.only(left: 16.h),
      radius: BorderRadius.circular(
        24.h,
      ),
      fit: BoxFit.fill,
    ),
    actions: [
      AppbarTrailingIconbutton(
        imagePath: ImageConstant.imgIconHeartParent,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          right: 4.h,
        ),
      ),
      AppbarTrailingIconbutton(
        imagePath: ImageConstant.imgIconSetting,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          right: 20.h,
        ),
      ),
    ],
  );
}
