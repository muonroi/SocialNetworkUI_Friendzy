import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:muonroi_friends/presentation/splash_screen/models/splash_model.dart';
part 'splash_state.dart';

final spashNotifier = StateNotifierProvider<SplashNotifier, SplashState>(
    (ref) => SplashNotifier(SplashState(spashModelObj: const SplashModel())));

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(SplashState state) : super(state);
}
