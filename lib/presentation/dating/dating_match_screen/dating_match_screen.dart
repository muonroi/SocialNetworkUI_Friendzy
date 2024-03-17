import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/dating/dating_match_screen/notifier/match_dating_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:sprintf/sprintf.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
part 'widgets/build_percentage_widget.dart';

class MatchDatingScreen extends ConsumerStatefulWidget {
  const MatchDatingScreen({Key? key}) : super(key: key);
  @override
  MatchDatingScreenState createState() => MatchDatingScreenState();
}

class MatchDatingScreenState extends ConsumerState<MatchDatingScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    datingRef = ref.watch(matchDatingNotifier);
  }

  late MatchDatingState datingRef;
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
                      width: 289.h,
                      margin: EdgeInsets.only(left: 42.h, right: 43.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: datingRef.matchDatingModelObj!.nameOfUser,
                                style: CustomTextStyles.headlineSmallff4b164c),
                            TextSpan(
                                text: sprintf(
                                    LocalizationKeys.msgYouAndAlfredo.name.tr, [
                                  datingRef.matchDatingModelObj!.nameOfFriend
                                ]),
                                style: CustomTextStyles.headlineSmallffdd88cf)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 80.v),
                  _buildPercentageWidget(context, ref, datingRef),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                    text: LocalizationKeys.lblSendAMessage.name.tr,
                    margin: EdgeInsets.symmetric(horizontal: 40.h),
                    leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIconSendMassage,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    buttonTextStyle: CustomTextStyles.titleMediumWhite200Bold,
                    onPressed: () =>
                        onTapScreenTitle(AppRoutes.datingConnectFriendScreen),
                  ),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      text: LocalizationKeys.lblKeepSwiping.name.tr,
                      margin: EdgeInsets.symmetric(horizontal: 40.h),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 10.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgIconKeepSwiping,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillOnErrorContainerTL28,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPurple200Bold),
                  SizedBox(height: 5.v)
                ]))));
  }
}
