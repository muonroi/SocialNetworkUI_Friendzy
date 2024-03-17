part of '../../home_make_friend_tab_screen/home_make_friend_tab_screen.dart';

Widget _buildTabView(
    BuildContext context, WidgetRef ref, TabController tabViewController) {
  return Container(
    height: 40.v,
    width: 343.h,
    decoration: BoxDecoration(
      color: appTheme.purple5002,
      borderRadius: BorderRadius.circular(
        16.h,
      ),
    ),
    child: TabBar(
      controller: tabViewController,
      labelPadding: EdgeInsets.zero,
      labelColor: theme.colorScheme.primary,
      labelStyle: TextStyle(
        fontSize: 14.fSize,
        fontFamily: 'Hellix',
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: theme.colorScheme.primary,
      unselectedLabelStyle: TextStyle(
        fontSize: 14.fSize,
        fontFamily: 'Hellix',
        fontWeight: FontWeight.w600,
      ),
      indicator: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      onTap: (value) =>
          ref.read(tabStateProvider.notifier).state = (value == 0),
      tabs: [
        Tab(
          child: Text(
            LocalizationKeys.lblMakeFriends.name.tr,
          ),
        ),
        Tab(
          child: Text(
            LocalizationKeys.lblSearchPartners.name.tr,
          ),
        ),
      ],
    ),
  );
}
