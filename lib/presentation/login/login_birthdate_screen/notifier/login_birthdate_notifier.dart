import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_birthdate_screen/models/login_birthdate_model.dart';

part 'login_birthdate_state.dart';

final loginBirthdateNotifier =
    StateNotifierProvider<LoginBirthdateNotifier, LoginBirthdateState>((ref) =>
        LoginBirthdateNotifier(LoginBirthdateState(
            dateController: TextEditingController(),
            loginBirthdateModelObj: const LoginBirthdateModel())));

class LoginBirthdateNotifier extends StateNotifier<LoginBirthdateState> {
  LoginBirthdateNotifier(LoginBirthdateState state) : super(state);
  void updateBirthdate(DateTime date) {
    state = state.copyWith(
        dateController: TextEditingController(
            text: DateFormat('dd-MM-yyyy').format(date).split("T")[0]));
  }
}
