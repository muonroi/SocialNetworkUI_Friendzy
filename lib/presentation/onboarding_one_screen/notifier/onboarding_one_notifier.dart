import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/onboarding_one_screen/model/onboarding_one_model.dart';
import '/core/app_export.dart';
part 'onboarding_one_state.dart';

final onboardingOneNotifier =
    StateNotifierProvider<OnboardingOneNotifier, OnboardingOneState>(
  (ref) => OnboardingOneNotifier(OnboardingOneState(
    onboardingOneModelObj: const OnboardingOneModel(),
  )),
);

/// A notifier that manages the state of a OnboardingOne according to the event that is dispatched to it.\
class OnboardingOneNotifier extends StateNotifier<OnboardingOneState> {
  OnboardingOneNotifier(OnboardingOneState state) : super(state);
}
