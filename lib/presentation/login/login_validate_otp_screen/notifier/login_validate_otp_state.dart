// ignore_for_file: must_be_immutable

part of 'login_validate_otp_notifier.dart';

/// Represents the state of LoginValidateOtpCode in the application.
class LoginValidateOtpCodeState extends Equatable {
  LoginValidateOtpCodeState({
    this.otpController,
    this.loginValidateOtpCodeModelObj,
  });
  TextEditingController? otpController;
  LoginValidateOtpCodeModel? loginValidateOtpCodeModelObj;
  @override
  List<Object?> get props => [
        otpController,
        loginValidateOtpCodeModelObj,
      ];
  LoginValidateOtpCodeState copyWith({
    TextEditingController? otpController,
    LoginValidateOtpCodeModel? loginValidateOtpCodeModelObj,
  }) {
    return LoginValidateOtpCodeState(
      otpController: otpController ?? this.otpController,
      loginValidateOtpCodeModelObj:
          loginValidateOtpCodeModelObj ?? this.loginValidateOtpCodeModelObj,
    );
  }
}
