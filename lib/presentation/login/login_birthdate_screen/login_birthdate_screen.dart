import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login/login_birthdate_screen/notifier/login_birthdate_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_birthdate_field.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/custom_text_form_field.dart';

class LoginBirthdateScreen extends ConsumerStatefulWidget {
  const LoginBirthdateScreen({Key? key}) : super(key: key);
  @override
  LoginBirthdateScreenState createState() => LoginBirthdateScreenState();
}

class LoginBirthdateScreenState extends ConsumerState<LoginBirthdateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v),
          child: Column(
            children: [
              Text(
                LocalizationKeys.msgWhenIsYourBirthdate.name.tr,
                style: CustomTextStyles.headlineSmallPrimary,
              ),
              SizedBox(height: 23.v),
              CustomTextFormField(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SizedBox(
                            width: 500.v,
                            height: 300.h,
                            child: CustomBirthdateField(
                              ref: ref,
                            ),
                          ),
                        );
                      });
                },
                readOnly: true,
                controller: ref.watch(loginBirthdateNotifier).dateController,
                hintText: LocalizationKeys.lbl201020.name.tr,
                hintStyle: CustomTextStyles.bodyLargeGray400,
                textInputAction: TextInputAction.done,
              ),
              const Spacer(flex: 15),
              _buildTwentyFive(context),
              SizedBox(height: 15.v),
              Container(
                height: 6.v,
                width: 327.h,
                decoration: BoxDecoration(
                  color: appTheme.purple200.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(3.h),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3.h),
                  child: LinearProgressIndicator(
                    value: 0.4,
                    backgroundColor: appTheme.purple200.withOpacity(0.2),
                    valueColor:
                        AlwaysStoppedAnimation<Color>(appTheme.purple200),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTwentyFive(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 33.v),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocalizationKeys.lbl25.name.tr,
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(16.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            child: CustomImageView(
                imagePath: ImageConstant.imgIconOnerrorcontainer),
            onTap: () => onTapScreenTitle(AppRoutes.loginGenderScreen),
          ),
        ),
      ],
    );
  }
}
