part of '../home_make_friend_tab_screen.dart';

PreferredSizeWidget _buildMessageAppBar(BuildContext context) {
  return AppBar(
      backgroundColor: theme.primaryColor,
      automaticallyImplyLeading: false,
      leadingWidth: 64.h,
      centerTitle: true,
      title: AppbarSubtitle(text: LocalizationKeys.lblMessages.name.tr));
}
