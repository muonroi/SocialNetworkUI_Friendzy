import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/widget/app_bar/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/app_bar/custom_image_view.dart';
import 'package:muonroi_friends/widget/app_bar/custom_outlined_button.dart';
import 'package:muonroi_friends/widget/onboarding/button/build_continue_widget.dart';
part 'widgets/music_container_widget.dart';
part 'widgets/signin_container_widget.dart';

class OnboardingOneScreen extends ConsumerStatefulWidget {
  const OnboardingOneScreen({super.key});

  @override
  OnboardingOneScreenState createState() => OnboardingOneScreenState();
}

class OnboardingOneScreenState extends ConsumerState<OnboardingOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 48.v),
        child: Column(children: [
          SizedBox(
            height: 5.v,
          ),
          _buildMusicContainer(context),
          SizedBox(
            height: 36.v,
          ),
          Container(
            width: 279.h,
            margin: EdgeInsets.symmetric(horizontal: 48.h),
            child: Text(
              LocalizationKeys.msgMakeFriendsWith.name.tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium!.copyWith(
                height: 1.30,
              ),
            ),
          ),
          SizedBox(
            height: 11.v,
          ),
          Opacity(
            opacity: 0.7,
            child: SizedBox(
              width: 250.h,
              child: Text(
                LocalizationKeys.msgInteractWithPeople.name.tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.v),
          buildContinueContainer(context, LocalizationKeys.lblContinue.name.tr,
              () => onTapScreenTitle(AppRoutes.onboardingTwoScreen)),
          SizedBox(height: 16.v),
          _buildSignInContainer(context)
        ]),
      ),
    ));
  }
}
