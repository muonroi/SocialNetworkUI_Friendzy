import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login/login_gender_screen/models/login_gender_model.dart';
import 'package:muonroi_friends/presentation/login/login_gender_screen/notifier/login_gender_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/login/build_step_widget.dart';
part 'widgets/build_gender_button_widget.dart';
part 'widgets/build_selected_gender_button_widget.dart';

class LoginGenderScreen extends ConsumerStatefulWidget {
  const LoginGenderScreen({Key? key}) : super(key: key);
  @override
  LoginGenderScreenState createState() => LoginGenderScreenState();
}

class LoginGenderScreenState extends ConsumerState<LoginGenderScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(loginGenderNotifier).selectedGender?.props.firstOrNull == null
        ? ref.read(loginGenderNotifier.notifier).updateGender(Gender.male)
        : ref.watch(loginGenderNotifier).selectedGender?.props.firstOrNull ==
            null;
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
            _buildSelectGender(context, ref),
            SizedBox(height: 5.v),
            const Spacer(flex: 15),
            buildStep(context, LocalizationKeys.lbl35.name.tr,
                () => onTapScreenTitle(AppRoutes.loginSelectInterestScreen)),
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
                  value: 0.6,
                  backgroundColor: appTheme.purple200.withOpacity(0.2),
                  valueColor: AlwaysStoppedAnimation<Color>(appTheme.purple200),
                ),
              ),
            ),
          ])),
    ));
  }
}
