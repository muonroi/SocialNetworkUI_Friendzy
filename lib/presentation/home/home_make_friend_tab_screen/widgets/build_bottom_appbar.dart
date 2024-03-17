part of '../home_make_friend_tab_screen.dart';

Widget _buildBottomBar(
    BuildContext context, TabController tabViewController, WidgetRef ref) {
  return CustomBottomBar(
    onChanged: (BottomBarEnum type) {
      switch (type) {
        case BottomBarEnum.imgIconHome:
          ref.read(tabRootStateProvider.notifier).state = type.index;
          break;
        case BottomBarEnum.Iconprimary24x24:
          ref.read(tabRootStateProvider.notifier).state = type.index;
          break;
        case BottomBarEnum.Icon3:
          ref.read(tabRootStateProvider.notifier).state = type.index;
          break;
        case BottomBarEnum.Searchprimary:
          ref.read(tabRootStateProvider.notifier).state = type.index;
          break;
      }
      debugPrint(type.toString());
    },
    tabController: tabViewController,
  );
}
