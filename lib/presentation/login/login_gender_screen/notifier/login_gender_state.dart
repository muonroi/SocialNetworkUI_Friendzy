// ignore_for_file: must_be_immutable

part of 'login_gender_notifier.dart';

class LoginGenderState extends Equatable {
  const LoginGenderState({
    this.selectedGender,
  });
  final LoginGenderModel? selectedGender;
  @override
  List<Object?> get props => [
        selectedGender,
      ];
  LoginGenderState copyWith({
    LoginGenderModel? selectedGender,
  }) {
    return LoginGenderState(
      selectedGender: selectedGender ?? this.selectedGender,
    );
  }
}
