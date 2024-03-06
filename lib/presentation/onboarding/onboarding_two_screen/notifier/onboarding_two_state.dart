part of 'onboarding_two_notifier.dart';

// ignore_for_file: must_be_immutable
/// Represents the state of OnboardingTwo in the application.
class OnboardingTwoState extends Equatable {
  OnboardingTwoState({this.onboardingTwoModelObj});
  OnboardingTwoModel? onboardingTwoModelObj;
  @override
  List<Object?> get props => [
        onboardingTwoModelObj,
      ];
  OnboardingTwoState copyWith({OnboardingTwoModel? onboardingTwoModelObj}) {
    return OnboardingTwoState(
      onboardingTwoModelObj:
          onboardingTwoModelObj ?? this.onboardingTwoModelObj,
    );
  }
}
