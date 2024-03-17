import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/discover_base_screen.dart';
import 'package:muonroi_friends/presentation/discover/discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_screen/home_make_friend_screen.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_tab_screen/notifier/make_friend_tab_notifier.dart';
import 'package:muonroi_friends/presentation/home/home_search_partners_screen/home_search_parent_screen.dart';
import 'package:muonroi_friends/presentation/home/home_search_partners_screen/models/search_partners_model.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_subtitle_one.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_subtitle_two.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_title.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_title_image.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_bottom_bar.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

part 'widgets/build_appbar.dart';
part 'widgets/build_icon.dart';
part 'widgets/build_tab_bar_view.dart';
part 'widgets/build_bottom_appbar.dart';
part 'widgets/build_search_partners_appbar.dart';
part 'widgets/build_appbar_discover.dart';

class HomeMakeFriendsTabScreen extends ConsumerStatefulWidget {
  const HomeMakeFriendsTabScreen({Key? key})
      : super(
          key: key,
        );
  @override
  HomeMakeFriendsTabScreenState createState() =>
      HomeMakeFriendsTabScreenState();
}

class HomeMakeFriendsTabScreenState
    extends ConsumerState<HomeMakeFriendsTabScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    _tabViewController = TabController(length: 2, vsync: this);
    _tabRootViewController = TabController(length: 4, vsync: this);
    _screenSwipe = const [
      HomeSearchPartnersScreen(HomeSearchPartnersModel(
        id: 0,
        name: 'Alfredo Calzoni',
        address: 'HAMBURG, GERMANY',
        age: 20,
        images: [
          'https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
        ],
        distance: 2.6,
        percentMatch: 75,
      )),
      HomeSearchPartnersScreen(HomeSearchPartnersModel(
        id: 0,
        name: 'Alfredo',
        address: 'HAMBURG, USA',
        age: 20,
        images: [
          'https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
        ],
        distance: 3.6,
        percentMatch: 80,
      ))
    ];
  }

  late List<HomeSearchPartnersScreen> _screenSwipe;
  late TabController _tabViewController;
  late TabController _tabRootViewController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTypeAppbar(context, ref),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabRootViewController,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 4.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 12.v),
                    Expanded(
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            ref.watch(tabStateProvider)
                                ? _buildIcon(context)
                                : Container(),
                            SizedBox(height: 26.v),
                            _buildTabView(context, ref, _tabViewController),
                            Expanded(
                              child: Stack(children: [
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
                                        style:
                                            CustomTextStyles.bodyLargePrimary,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 520.v,
                                  child: TabBarView(
                                    controller: _tabViewController,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      const HomeMakeFriendsScreen(),
                                      AppinioSwiper(
                                          invertAngleOnBottomDrag: true,
                                          backgroundCardCount:
                                              _screenSwipe.length,
                                          swipeOptions:
                                              const SwipeOptions.all(),
                                          controller: ref
                                              .watch(
                                                  homeMakeFriendsTabContainerNotifier)
                                              .swiperController,
                                          cardBuilder: (BuildContext context,
                                              int index) {
                                            return _screenSwipe[index];
                                          },
                                          cardCount: _screenSwipe.length),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const DiscoverScreen(),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.red,
              ),
            ]),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(24.h),
          child: _buildBottomBar(context, _tabRootViewController, ref),
        ),
      ),
    );
  }

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
          return _buildSearchPartnersAppBar(context, ref);
        case 3:
          return _buildDiscoverAppBar(context);
      }
    }
    return _buildAppBar(context);
  }
}
