import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/models/login_select_interest_item_model.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/notifier/login_select_interest_notifier.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/widgets/interests_item_widget.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/login/build_step_widget.dart';
part 'widgets/build_interest_widget.dart';

class LoginSelectInterestScreen extends ConsumerStatefulWidget {
  const LoginSelectInterestScreen({Key? key}) : super(key: key);
  @override
  LoginSelectInterestScreenState createState() =>
      LoginSelectInterestScreenState();
}

class LoginSelectInterestScreenState
    extends ConsumerState<LoginSelectInterestScreen> {
  var data = List<InterestsItemModel>.generate(15, (index) {
    return InterestsItemModel(
      category: "Interest",
      imagePath: ImageConstant.imgArrowDown,
      isSelected: false,
    );
  });
  @override
  Widget build(BuildContext context) {
    ref.read(loginSelectInterestNotifier.notifier).onInitValue(data);
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.v),
          child: Column(children: [
            Text(LocalizationKeys.msgSelectUpTo5Interests.name.tr,
                style: CustomTextStyles.headlineSmallPrimary),
            SizedBox(height: 23.v),
            _buildInterests(context),
            const Spacer(flex: 15),
            buildStep(context, LocalizationKeys.lbl45.name.tr, () {}),
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
                  value: 0.8,
                  backgroundColor: appTheme.purple200.withOpacity(0.2),
                  valueColor: AlwaysStoppedAnimation<Color>(appTheme.purple200),
                ),
              ),
            ),
          ])),
    ));
  }
}
