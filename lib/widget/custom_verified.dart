import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/onboarding/button/build_continue_widget.dart';

class VerifiedWidget extends StatefulWidget {
  const VerifiedWidget({super.key});

  @override
  State<VerifiedWidget> createState() => _VerifiedWidgetState();
}

class _VerifiedWidgetState extends State<VerifiedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
          color: Colors.transparent),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.v),
          Stack(children: [
            Opacity(
              opacity: 0.2,
              child: Center(
                child: Container(
                  height: 120.adaptSize,
                  width: 120.adaptSize,
                  padding: EdgeInsets.all(24.h),
                  decoration: AppDecoration.fillPurple.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder70,
                  ),
                  child: Container(
                    height: 120.adaptSize,
                    width: 120.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.circleBorder46,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconOnerrorcontainer48x48,
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 14.v),
                height: 92.adaptSize,
                width: 92.adaptSize,
                padding: EdgeInsets.all(24.h),
                decoration: AppDecoration.fillPurple.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder70,
                ),
                child: Container(
                  height: 92.adaptSize,
                  width: 92.adaptSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder46,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconOnerrorcontainer48x48,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(height: 39.v),
          Text(
            LocalizationKeys.lblYouReVerified.name.tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: 240.h,
              margin: EdgeInsets.symmetric(horizontal: 19.h),
              child: Text(
                LocalizationKeys.msgYourAccountIs.name.tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_2.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 31.v),
          buildContinueContainer(
              context, LocalizationKeys.lblGetStarted.name.tr, () => {}, false),
        ],
      ),
    );
  }
}
