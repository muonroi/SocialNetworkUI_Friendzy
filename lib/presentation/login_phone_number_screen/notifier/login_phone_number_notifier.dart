import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login_phone_number_screen/model/login_phone_number_model.dart';
part 'login_phone_number_state.dart';

final loginPhoneNumberNotifier =
    StateNotifierProvider<LoginPhoneNumberNotifier, LoginPhoneNumberState>(
        (ref) => LoginPhoneNumberNotifier(LoginPhoneNumberState(
            phoneNumberController: TextEditingController(),
            selectedCountry: CountryPickerUtils.getCountryByPhoneCode('84'),
            loginPhoneNumberModelObj: const LoginPhoneNumberModel())));

/// A notifier that manages the state of a CreateAccountPhoneNumber according to the event that is dispatched to it.
class LoginPhoneNumberNotifier extends StateNotifier<LoginPhoneNumberState> {
  LoginPhoneNumberNotifier(LoginPhoneNumberState state) : super(state);
  void updatePhoneNumber(String phoneNumber) {
    state = state.copyWith(
      phoneNumberController: TextEditingController(text: phoneNumber),
    );
  }

  void updateSelectedCountry(Country country) {
    state = state.copyWith(selectedCountry: country);
  }
}
