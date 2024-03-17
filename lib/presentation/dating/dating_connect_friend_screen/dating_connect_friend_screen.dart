import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/models/category_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/notifier/dating_connect_friend_notifier.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/widgets/category_item_widget.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
part 'widgets/build_lets_make_friend_widget.dart';
part 'widgets/build_connect_widget.dart';
part 'widgets/build_couple_connect_widget.dart';

class ConnectMakeFriendsScreen extends ConsumerStatefulWidget {
  const ConnectMakeFriendsScreen({Key? key}) : super(key: key);
  @override
  ConnectMakeFriendsScreenState createState() =>
      ConnectMakeFriendsScreenState();
}

class ConnectMakeFriendsScreenState
    extends ConsumerState<ConnectMakeFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.purple50,
            appBar: buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 31.v),
                child: Column(children: [
                  Container(
                      width: 321.h,
                      margin: EdgeInsets.only(left: 26.h, right: 27.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: LocalizationKeys
                                    .msgYouAreConnected2.name.tr,
                                style: CustomTextStyles.headlineSmallff4b164c),
                            TextSpan(
                                text:
                                    '${ref.watch(connectMakeFriendsNotifier).connectMakeFriendsModelObj!.categoryItemList.first.friendOfName} ',
                                style: CustomTextStyles.headlineSmallffdd88cf),
                            TextSpan(
                                text: ref
                                    .watch(connectMakeFriendsNotifier)
                                    .connectMakeFriendsModelObj!
                                    .categoryItemList
                                    .first
                                    .friendOfAddress,
                                style: CustomTextStyles.headlineSmallff4b164c)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 10.v),
                  SizedBox(
                      height: 582.v,
                      width: double.maxFinite,
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            _buildConnect(context, ref),
                            _buildLetSMakeFriend(context, ref)
                          ]))
                ]))));
  }
}
