// ignore_for_file: must_be_immutable

part of 'login_set_name_notifier.dart';

/// Represents the state of CreateAccountName in the application.
class LoginSetNameState extends Equatable {
  LoginSetNameState({
    this.inputController,
    this.loginSetNameModelObj,
  });
  TextEditingController? inputController;
  LoginSetNameModel? loginSetNameModelObj;
  @override
  List<Object?> get props => [
        inputController,
        loginSetNameModelObj,
      ];
  LoginSetNameState copyWith({
    TextEditingController? inputController,
    LoginSetNameModel? loginSetNameModelObj,
  }) {
    return LoginSetNameState(
      inputController: inputController ?? this.inputController,
      loginSetNameModelObj: loginSetNameModelObj ?? this.loginSetNameModelObj,
    );
  }
}
