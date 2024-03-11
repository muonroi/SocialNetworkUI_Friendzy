part of 'login_phone_number_notifier.dart';

// Represents the state of CreateAccountPhoneNumber in the application.
// ignore: must_be_immutable
class LoginPhoneNumberState extends Equatable {
  LoginPhoneNumberState({
    this.phoneNumberController,
    this.selectedCountry,
    this.loginPhoneNumberModelObj,
  });
  TextEditingController? phoneNumberController;
  LoginPhoneNumberModel? loginPhoneNumberModelObj;
  Country? selectedCountry;
  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        loginPhoneNumberModelObj,
      ];
  LoginPhoneNumberState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    LoginPhoneNumberModel? loginPhoneNumberModelObj,
  }) {
    return LoginPhoneNumberState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      loginPhoneNumberModelObj:
          loginPhoneNumberModelObj ?? this.loginPhoneNumberModelObj,
    );
  }
}
