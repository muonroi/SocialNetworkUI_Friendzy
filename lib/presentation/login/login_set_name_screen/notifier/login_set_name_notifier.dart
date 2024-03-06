import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_set_name_screen/models/login_set_name_model.dart';

part 'login_set_name_state.dart';

final loginSetNameNotifier =
    StateNotifierProvider<LoginSetNameNotifier, LoginSetNameState>((ref) =>
        LoginSetNameNotifier(LoginSetNameState(
            inputController: TextEditingController(),
            loginSetNameModelObj: const LoginSetNameModel())));

/// A notifier that manages the state of a CreateAccountName according to the event that is dispatched to it.
class LoginSetNameNotifier extends StateNotifier<LoginSetNameState> {
  LoginSetNameNotifier(LoginSetNameState state) : super(state);
}
