import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/dating/dating_match_dating_screen/models/match_dating_model.dart';
part 'match_dating_state.dart';

final matchDatingNotifier =
    StateNotifierProvider<MatchDatingNotifier, MatchDatingState>((ref) =>
        MatchDatingNotifier(MatchDatingState(
            matchDatingModelObj: MatchDatingModel(
                nameOfUser: 'You',
                nameOfFriend: 'Alfredo',
                imageOfUser: ImageConstant.imgIvanaCajina7,
                imageOfFriend: ImageConstant.imgWoman,
                matchPercentage: 80,
                initMatchPercentage: 0))));

class MatchDatingNotifier extends StateNotifier<MatchDatingState> {
  MatchDatingNotifier(MatchDatingState state) : super(state);

  void updateMatchPercentage(double matchPercentage) {
    state = state.copyWith(
        matchDatingModelObj: state.matchDatingModelObj!.copyWith(
            MatchDatingModel(
                nameOfUser: 'You',
                nameOfFriend: 'Alfredo',
                imageOfUser: ImageConstant.imgIvanaCajina7,
                imageOfFriend: ImageConstant.imgWoman,
                matchPercentage: 80,
                initMatchPercentage: matchPercentage)));
  }
}
