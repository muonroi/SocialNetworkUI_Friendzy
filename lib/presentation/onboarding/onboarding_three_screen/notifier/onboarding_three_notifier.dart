import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/onboarding/onboarding_three_screen/models/onboarding_three_model.dart';
import '/core/app_export.dart';

part 'onboarding_three_state.dart';

final onboardingThreeNotifier =
    StateNotifierProvider<OnboardingThreeNotifier, OnboardingThreeState>(
  (ref) => OnboardingThreeNotifier(OnboardingThreeState(
    onboardingThreeModelObj: const OnboardingThreeModel(),
  )),
);

/// A notifier that manages the state of a OnboardingOne according to the event that is dispatched to it.\
class OnboardingThreeNotifier extends StateNotifier<OnboardingThreeState> {
  OnboardingThreeNotifier(OnboardingThreeState state) : super(state);
}
