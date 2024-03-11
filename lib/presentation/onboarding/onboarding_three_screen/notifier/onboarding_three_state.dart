part of 'onboarding_three_notifier.dart';

// ignore_for_file: must_be_immutable
/// Represents the state of OnboardingTwo in the application.
class OnboardingThreeState extends Equatable {
  OnboardingThreeState({this.onboardingThreeModelObj});
  OnboardingThreeModel? onboardingThreeModelObj;
  @override
  List<Object?> get props => [
        onboardingThreeModelObj,
      ];
  OnboardingThreeState copyWith(
      {OnboardingThreeModel? onboardingThreeModelObj}) {
    return OnboardingThreeState(
      onboardingThreeModelObj:
          onboardingThreeModelObj ?? this.onboardingThreeModelObj,
    );
  }
}
