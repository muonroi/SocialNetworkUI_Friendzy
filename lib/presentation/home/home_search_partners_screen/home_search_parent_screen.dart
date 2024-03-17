import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_tab_screen/notifier/make_friend_tab_notifier.dart';
import 'package:muonroi_friends/presentation/home/home_search_partners_screen/models/search_partners_model.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/custom_outlined_button.dart';
import 'package:url_launcher/url_launcher.dart';
part 'widgets/build_encounter.dart';
part 'widgets/build_button.dart';
part 'widgets/build_social.dart';

class HomeSearchPartnersScreen extends ConsumerStatefulWidget {
  const HomeSearchPartnersScreen(this.searchPartnersModel, {Key? key})
      : super(
          key: key,
        );
  @override
  HomeSearchPartnersScreenState createState() =>
      HomeSearchPartnersScreenState();
  final HomeSearchPartnersModel searchPartnersModel;
}

class HomeSearchPartnersScreenState
    extends ConsumerState<HomeSearchPartnersScreen>
    with AutomaticKeepAliveClientMixin<HomeSearchPartnersScreen> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: Consumer(builder: (context, ref, _) {
          return Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillGray,
            child: Column(
              children: [
                SizedBox(height: 10.v),
                _buildEncounters(context, widget.searchPartnersModel, ref),
              ],
            ),
          );
        }),
      ),
    );
  }
}
