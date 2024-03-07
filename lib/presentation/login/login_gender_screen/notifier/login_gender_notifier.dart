import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_gender_screen/models/login_gender_model.dart';

part 'login_gender_state.dart';

final loginGenderNotifier =
    StateNotifierProvider<LoginGenderNotifier, LoginGenderState>((ref) =>
        LoginGenderNotifier(const LoginGenderState(selectedGender: null)));

/// A notifier that manages the state of a LoginGender according to the event that is dispatched to it.
class LoginGenderNotifier extends StateNotifier<LoginGenderState> {
  LoginGenderNotifier(LoginGenderState state) : super(state);
  void updateGender(Gender gender) {
    final selectedGender = LoginGenderModel(gender);
    state = state.copyWith(selectedGender: selectedGender);
  }
}
