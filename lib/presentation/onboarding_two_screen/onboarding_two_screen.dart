import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/widget/app_bar/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/app_bar/custom_outlined_button.dart';
import 'package:muonroi_friends/widget/onboarding/button/build_continue_widget.dart';
part 'widgets/build_match_widget.dart';

class OnboardingTwoScreen extends ConsumerStatefulWidget {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingTwoScreenState createState() => OnboardingTwoScreenState();
}

class OnboardingTwoScreenState extends ConsumerState<OnboardingTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 48.v),
          child: Column(
            children: [
              SizedBox(height: 21.v),
              _buildMatch(context),
              SizedBox(height: 40.v),
              Container(
                width: 273.h,
                margin: EdgeInsets.symmetric(horizontal: 50.h),
                child: Text(
                  LocalizationKeys.msgFindYourPreferences.name.tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    height: 1.30,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Opacity(
                opacity: 0.7,
                child: SizedBox(
                  width: 255.h,
                  child: Text(
                    LocalizationKeys.msgJoinUsWithOther.name.tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.bodyLargeOnPrimaryContainer.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              buildContinueContainer(
                  context,
                  LocalizationKeys.lblContinue.name.tr,
                  () => onTapScreenTitle(AppRoutes.onboardingThreeScreen)),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: LocalizationKeys.lblSignIn.name.tr,
                margin: EdgeInsets.symmetric(horizontal: 40.h),
                buttonStyle: CustomButtonStyles.fillPurple5002,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
