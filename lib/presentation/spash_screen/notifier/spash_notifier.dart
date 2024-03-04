import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import 'package:muonroi_friends/presentation/spash_screen/models/spash_model.dart';
part 'spash_state.dart';

final spashNotifier = StateNotifierProvider<SpashNotifier, SpashState>(
    (ref) => SpashNotifier(SpashState(spashModelObj: const SpashModel())));

class SpashNotifier extends StateNotifier<SpashState> {
  SpashNotifier(SpashState state) : super(state);
}
