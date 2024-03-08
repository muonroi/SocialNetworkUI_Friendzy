part of 'login_select_interest_notifier.dart';

// ignore: must_be_immutable
class LoginSelectInterestState extends Equatable {
  LoginSelectInterestState({this.loginSelectInterestModelObj});
  LoginSelectInterestModel? loginSelectInterestModelObj;
  @override
  List<Object?> get props => [
        loginSelectInterestModelObj,
      ];
  LoginSelectInterestState copyWith(
      {LoginSelectInterestModel? loginSelectInterestModelObj}) {
    return LoginSelectInterestState(
      loginSelectInterestModelObj:
          loginSelectInterestModelObj ?? this.loginSelectInterestModelObj,
    );
  }
}
