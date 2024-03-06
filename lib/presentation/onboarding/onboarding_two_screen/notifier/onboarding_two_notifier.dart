import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/onboarding/onboarding_two_screen/models/onboarding_two_model.dart';
import '/core/app_export.dart';

part 'onboarding_two_state.dart';

final onboardingTwoNotifier =
    StateNotifierProvider<OnboardingTwoNotifier, OnboardingTwoState>(
  (ref) => OnboardingTwoNotifier(OnboardingTwoState(
    onboardingTwoModelObj: const OnboardingTwoModel(),
  )),
);

/// A notifier that manages the state of a OnboardingOne according to the event that is dispatched to it.\
class OnboardingTwoNotifier extends StateNotifier<OnboardingTwoState> {
  OnboardingTwoNotifier(OnboardingTwoState state) : super(state);
}
