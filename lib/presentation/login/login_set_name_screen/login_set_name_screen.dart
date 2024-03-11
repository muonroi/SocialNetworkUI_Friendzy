import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/login/login_set_name_screen/notifier/login_set_name_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/custom_text_form_field.dart';
part 'widgets/build_set_icon_widget.dart';

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
                _buildIcon(context, _nameValidationError),
              ])),
        ));
  }
}
