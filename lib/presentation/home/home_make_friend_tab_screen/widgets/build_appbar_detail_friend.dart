part of '../home_make_friend_tab_screen.dart';

PreferredSizeWidget _buildDetailFriendAppBar(BuildContext context) {
  return CustomAppBar(
    height: 56.v,
    title: AppbarTitle(
      text: LocalizationKeys.lblFriendzy.name.tr,
      margin: EdgeInsets.only(left: 16.h),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded))
    ],
  );
}
