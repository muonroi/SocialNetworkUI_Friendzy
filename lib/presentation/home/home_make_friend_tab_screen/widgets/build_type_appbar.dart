part of '../home_make_friend_tab_screen.dart';

PreferredSizeWidget _buildTypeAppbar(BuildContext context, WidgetRef ref) {
  if (ref.watch(tabRootStateProvider) == 0) {
    if (ref.watch(tabStateProvider)) {
      return _buildAppBar(context);
    } else {
      return _buildSearchPartnersAppBar(context, ref);
    }
  } else {
    switch (ref.watch(tabRootStateProvider)) {
      case 1:
        return _buildDiscoverAppBar(context);
      case 2:
        return _buildDetailFriendAppBar(context);
      case 3:
        return _buildMessageAppBar(context);
      case 4:
        return _buildMessageAppBar(context);
    }
  }
  return _buildAppBar(context);
}
