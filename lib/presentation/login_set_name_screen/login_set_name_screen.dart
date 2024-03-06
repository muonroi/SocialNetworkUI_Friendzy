import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/login_set_name_screen/notifier/login_set_name_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/app_bar/custom_icon_button.dart';
import 'package:muonroi_friends/widget/app_bar/custom_image_view.dart';
import 'package:muonroi_friends/widget/app_bar/custom_text_form_field.dart';

class LoginSetNameScreen extends ConsumerStatefulWidget {
  const LoginSetNameScreen({Key? key}) : super(key: key);
  @override
  LoginSetNameScreenState createState() => LoginSetNameScreenState();
}

class LoginSetNameScreenState extends ConsumerState<LoginSetNameScreen> {
  @override
  void initState() {
    _nameValidationError = "";
    super.initState();
  }

  bool validateNameOfUser(String? nameOfUser) {
    nameOfUser = nameOfUser?.replaceAll(RegExp(r"\s+"), "");
    RegExp regex = RegExp(r'^.{4,}$');
    return regex.hasMatch(nameOfUser ?? "");
  }

  late String _nameValidationError;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        maintainBottomViewPadding: true,
        child: Scaffold(
          appBar: buildAppBar(context),
          resizeToAvoidBottomInset: true,
          body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
              child: Column(children: [
                Text(LocalizationKeys.msgWhatSYourName.name.tr,
                    style: CustomTextStyles.headlineSmallPrimary),
                SizedBox(height: 24.v),
                Consumer(builder: (context, ref, _) {
                  void updateNameOfUserValidation(value) {
                    setState(() {
                      _nameValidationError = validateNameOfUser(value)
                          ? "None"
                          : LocalizationKeys.msgInvalidNameOfUser.name.tr;
                    });
                  }

                  return CustomTextFormField(
                    controller: ref.watch(loginSetNameNotifier).inputController,
                    hintText: LocalizationKeys.lblNadiaLipsh.name.tr,
                    hintStyle: CustomTextStyles.bodyLargeGray400,
                    textInputAction: TextInputAction.done,
                    onChanged: (value) => updateNameOfUserValidation(value),
                    errorMessage: _nameValidationError,
                    textStyle: CustomTextStyles.bodyLargePrimary,
                  );
                }),
                Container(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                      _nameValidationError != "None"
                          ? _nameValidationError
                          : "",
                      style: TextStyle(color: Colors.red, fontSize: 12.v)),
                ),
                const Spacer(flex: 15),
                _buildIcon(context),
              ])),
        ));
  }

  /// Section Widget
  Widget _buildIcon(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        height: 120.v,
        width: 327.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          SizedBox(
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: _nameValidationError != "None"
                  ? IconButtonStyleHelper.outlineGray
                  : IconButtonStyleHelper.outlinePrimary,
              alignment: Alignment.topRight,
              onTap: _nameValidationError != "None" ? null : () {},
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconOnerrorcontainer),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: LocalizationKeys.lbl15.name.tr,
                              style: theme.textTheme.titleLarge),
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 15.v),
                    Container(
                        height: 6.v,
                        width: 327.h,
                        decoration: BoxDecoration(
                            color: appTheme.purple200.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(3.h)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(3.h),
                            child: LinearProgressIndicator(
                                value: 0.2,
                                backgroundColor:
                                    appTheme.purple200.withOpacity(0.2),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    appTheme.purple200))))
                  ]))
        ]));
  }
}
