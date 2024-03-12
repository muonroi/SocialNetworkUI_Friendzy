import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_method_screen/models/login_method_model.dart';

part 'login_method_state.dart';

final loginMethodStateNotifier =
    StateNotifierProvider<LoginEmptyStateNotifier, LoginEmptyStateState>(
        (ref) => LoginEmptyStateNotifier(LoginEmptyStateState(
            phoneNumberController: TextEditingController(),
            selectedCountry: CountryPickerUtils.getCountryByPhoneCode('84'),
            loginMethodModelObj: const LoginMethodModel())));

class LoginEmptyStateNotifier extends StateNotifier<LoginEmptyStateState> {
  LoginEmptyStateNotifier(LoginEmptyStateState state) : super(state);
}
