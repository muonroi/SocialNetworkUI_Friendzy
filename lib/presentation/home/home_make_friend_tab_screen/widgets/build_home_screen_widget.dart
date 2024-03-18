part of '../home_make_friend_tab_screen.dart';

Column _buildHomeScreen(
    BuildContext context,
    WidgetRef ref,
    TabController tabViewController,
    List<HomeSearchPartnersScreen> screenSwipe) {
  return Column(
    children: [
      ref.watch(tabStateProvider) ? _buildIcon(context) : Container(),
      SizedBox(height: 26.v),
      _buildTabView(context, ref, tabViewController),
      SizedBox(height: 10.v),
      Expanded(
          child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Center(
              child: SizedBox(
                width: 350.v,
                height: 50,
                child: Text(
                  LocalizationKeys.msgOutOfCard.name.tr,
                  style: CustomTextStyles.bodyLargePrimary,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: double.maxFinite,
            child: TabBarView(
              controller: tabViewController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                buildPosts(context),
                AppinioSwiper(
                    invertAngleOnBottomDrag: true,
                    backgroundCardCount: screenSwipe.length,
                    swipeOptions: const SwipeOptions.all(),
                    controller: ref
                        .watch(homeMakeFriendsTabContainerNotifier)
                        .swiperController,
                    cardBuilder: (BuildContext context, int index) {
                      return screenSwipe[index];
                    },
                    cardCount: screenSwipe.length),
              ],
            ),
          ),
        ],
      ))
    ],
  );
}
