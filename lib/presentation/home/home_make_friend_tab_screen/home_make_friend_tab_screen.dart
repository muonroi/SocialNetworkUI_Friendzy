import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/dating_matches_screen.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_screen/dating_profile_detail_screen.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/discover_base_screen.dart';
import 'package:muonroi_friends/presentation/discover/discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_screen/home_make_friend_screen.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_tab_screen/notifier/make_friend_tab_notifier.dart';
import 'package:muonroi_friends/presentation/home/home_search_partners_screen/home_search_parent_screen.dart';
import 'package:muonroi_friends/presentation/home/home_search_partners_screen/models/search_partners_model.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/main_message_screen.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_subtitle.dart';
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
part 'widgets/build_home_screen_widget.dart';
part 'widgets/build_appbar_message.dart';
part 'widgets/build_type_appbar.dart';
part 'widgets/build_appbar_detail_friend.dart';

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
  @override
  void initState() {
    super.initState();
    _tabViewController = TabController(length: 2, vsync: this);
    _tabRootViewController = TabController(length: 5, vsync: this);
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
        extendBody: true,
        appBar: _buildTypeAppbar(context, ref),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabRootViewController,
            children: [
              _buildHomeScreen(context, ref, _tabViewController, _screenSwipe),
              const DiscoverScreen(),
              const DatingProfileDetailScreen(),
              buildMatchesScreen(context),
              const MainMessageScreen(),
            ]),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(24.h),
          child: _buildBottomBar(context, _tabRootViewController, ref),
        ),
      ),
    );
  }
}
