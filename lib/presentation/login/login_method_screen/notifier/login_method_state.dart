part of 'login_method_notifier.dart';

// ignore: must_be_immutable
class LoginEmptyStateState extends Equatable {
  LoginEmptyStateState({
    this.phoneNumberController,
    this.selectedCountry,
    this.loginMethodModelObj,
  });
  TextEditingController? phoneNumberController;
  LoginMethodModel? loginMethodModelObj;
  Country? selectedCountry;
  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        loginMethodModelObj,
      ];
  LoginEmptyStateState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    LoginMethodModel? loginMethodModelObj,
  }) {
    return LoginEmptyStateState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      loginMethodModelObj: loginMethodModelObj ?? this.loginMethodModelObj,
    );
  }
}
