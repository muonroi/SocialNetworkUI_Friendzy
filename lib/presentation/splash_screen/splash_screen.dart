import 'dart:async';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Timer(const Duration(seconds: 5), () {
      onTapScreenTitle(AppRoutes.homeMakeFriendTabScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: appTheme.purple200,
      body: Container(
        width: double.maxFinite,
        height: 768.v,
        padding: EdgeInsets.symmetric(vertical: 18.v),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Opacity(
                opacity: 0.8,
                child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 600.v,
                    width: 307.h,
                    alignment: Alignment.topRight)),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: EdgeInsets.only(top: 321.v),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgContrast,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              margin: EdgeInsets.only(top: 15.v, bottom: 15.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(LocalizationKeys.lblFriendzy.name.tr,
                                  style: theme.textTheme.displayMedium))
                        ])))
          ],
        ),
      ),
    ));
  }
}
