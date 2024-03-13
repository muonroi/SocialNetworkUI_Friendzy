import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/make_friend_screen.dart';
import 'package:muonroi_friends/presentation/home/make_friend_tab_screen/notifier/make_friend_tab_notifier.dart';
import 'package:muonroi_friends/presentation/home/search_partners_screen/models/search_partners_model.dart';
import 'package:muonroi_friends/presentation/home/search_partners_screen/search_parent_screen.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_title.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_bottom_bar.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

part 'widgets/build_appbar.dart';
part 'widgets/build_icon.dart';
part 'widgets/build_tab_bar_view.dart';
part 'widgets/build_bottom_appbar.dart';
part 'widgets/build_search_partners_appbar.dart';

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
  late TabController tabViewController;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    tabViewController = TabController(length: 2, vsync: this);
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ref.watch(tabStateProvider)
            ? _buildAppBar(context)
            : _buildSearchPartnersAppBar(context, ref),
        body: Container(
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
                      _buildTabView(context, ref, tabViewController),
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
                                  style: CustomTextStyles.bodyLargePrimary,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 520.v,
                            child: TabBarView(
                              controller: tabViewController,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                const HomeMakeFriendsScreen(),
                                AppinioSwiper(
                                    invertAngleOnBottomDrag: true,
                                    backgroundCardCount: _screenSwipe.length,
                                    swipeOptions: const SwipeOptions.all(),
                                    controller: ref
                                        .watch(
                                            homeMakeFriendsTabContainerNotifier)
                                        .swiperController,
                                    cardBuilder:
                                        (BuildContext context, int index) {
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
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(24.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }
}
