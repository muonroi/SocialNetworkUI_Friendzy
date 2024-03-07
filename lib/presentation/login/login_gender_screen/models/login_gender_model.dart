import 'package:equatable/equatable.dart';

enum Gender { male, female }

class LoginGenderModel extends Equatable {
  const LoginGenderModel(this.gender);
  final Gender gender;
  @override
  List<Object?> get props => [gender];
}
