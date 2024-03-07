import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/login/login_gender_screen/models/login_gender_model.dart';
import 'package:muonroi_friends/presentation/login/login_gender_screen/notifier/login_gender_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

class LoginGenderScreen extends ConsumerStatefulWidget {
  const LoginGenderScreen({Key? key}) : super(key: key);
  @override
  LoginGenderScreenState createState() => LoginGenderScreenState();
}

class LoginGenderScreenState extends ConsumerState<LoginGenderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(context),
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
          child: Column(children: [
            Text(LocalizationKeys.msgWhatIsYourGender.name.tr,
                style: CustomTextStyles.headlineSmallPrimary),
            SizedBox(height: 22.v),
            _buildSelectGender(context),
            SizedBox(height: 5.v),
            const Spacer(flex: 15),
            _buildStep(context)
          ])),
    ));
  }

  Widget _buildSelectGender(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildGenderButton(
          context,
          ref,
          Gender.male,
          LocalizationKeys.lblMan.name.tr,
          ImageConstant.imgIcon,
          ref.watch(loginGenderNotifier).selectedGender?.props.firstOrNull ==
                  null
              ? false
              : ref.watch(loginGenderNotifier).selectedGender?.props.first
                      as Gender ==
                  Gender.male),
      _buildGenderButton(
          context,
          ref,
          Gender.female,
          LocalizationKeys.lblWoman.name.tr,
          ImageConstant.imgLaptop,
          ref.watch(loginGenderNotifier).selectedGender?.props.firstOrNull ==
                  null
              ? false
              : ref.watch(loginGenderNotifier).selectedGender?.props.first
                      as Gender ==
                  Gender.female),
    ]);
  }

  Widget _buildGenderButton(
    BuildContext context,
    WidgetRef ref,
    Gender gender,
    String label,
    String imagePath,
    bool isSelected,
  ) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        ref.read(loginGenderNotifier.notifier).updateGender(gender);
      },
      child: Stack(children: [
        isSelected
            ? Positioned(
                top: 10.v,
                right: 10.v,
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconPurple200,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 18.h, bottom: 48.v)),
              )
            : Container(),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 24.v),
            decoration: isSelected
                ? AppDecoration.outlinePurple.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                    color: Colors.transparent,
                    border: Border.all(color: appTheme.purple200, width: 1.h))
                : AppDecoration.fillOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                    color: Colors.transparent,
                    border:
                        Border.all(color: theme.primaryColor, width: 0.1.h)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(12.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(imagePath: imagePath)),
                  SizedBox(height: 17.v),
                  Text(label, style: theme.textTheme.bodyLarge),
                  SizedBox(height: 2.v)
                ])),
      ]),
    );
  }

  Widget _buildStep(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: LocalizationKeys.lbl35.name.tr,
                        style: theme.textTheme.titleLarge),
                  ]),
                  textAlign: TextAlign.left),
              Padding(
                  padding: EdgeInsets.only(top: 15.v),
                  child: Container(
                      height: 6.v,
                      width: 327.h,
                      decoration: BoxDecoration(
                          color: appTheme.purple200.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.h)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.h),
                          child: LinearProgressIndicator(
                              value: 0.6,
                              backgroundColor:
                                  appTheme.purple200.withOpacity(0.2),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.purple200)))))
            ]));
  }
}
