part of 'login_birthdate_notifier.dart';

// ignore: must_be_immutable
class LoginBirthdateState extends Equatable {
  LoginBirthdateState({
    this.dateController,
    this.loginBirthdateModelObj,
  });
  TextEditingController? dateController;
  LoginBirthdateModel? loginBirthdateModelObj;
  @override
  List<Object?> get props => [
        dateController,
        loginBirthdateModelObj,
      ];
  LoginBirthdateState copyWith({
    TextEditingController? dateController,
    LoginBirthdateModel? loginBirthdateModelObj,
  }) {
    return LoginBirthdateState(
      dateController: dateController ?? this.dateController,
      loginBirthdateModelObj:
          loginBirthdateModelObj ?? this.loginBirthdateModelObj,
    );
  }
}
