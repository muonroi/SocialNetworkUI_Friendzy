import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_validate_otp_screen/models/login_validate_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'login_validate_otp_state.dart';

final loginValidateOtpCodeNotifier =
    StateNotifierProvider<LoginValidateOtpNotifier, LoginValidateOtpCodeState>(
        (ref) => LoginValidateOtpNotifier(LoginValidateOtpCodeState(
            otpController: TextEditingController(),
            loginValidateOtpCodeModelObj: const LoginValidateOtpCodeModel())));

/// A notifier that manages the state of a LoginValidateOtpCode according to the event that is dispatched to it.
class LoginValidateOtpNotifier extends StateNotifier<LoginValidateOtpCodeState>
    with CodeAutoFill {
  LoginValidateOtpNotifier(LoginValidateOtpCodeState state) : super(state);
  void initController(TextEditingController controller) {
    Future(() {
      state = state.copyWith(otpController: controller);
    });
  }

  void disposeController() {
    state.otpController?.dispose();
  }

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
