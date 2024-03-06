part of 'splash_notifier.dart';

// ignore: must_be_immutable
class SplashState extends Equatable {
  SplashState({this.spashModelObj});
  SplashModel? spashModelObj;
  @override
  List<Object?> get props => [
        spashModelObj,
      ];
  SplashState copyWith({SplashModel? spashModelObj}) {
    return SplashState(
      spashModelObj: spashModelObj ?? this.spashModelObj,
    );
  }
}
