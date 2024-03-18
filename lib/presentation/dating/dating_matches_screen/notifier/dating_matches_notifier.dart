import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_match_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_matches_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_matches_model.dart';

part 'dating_matches_state.dart';

final matchesNotifier = StateNotifierProvider<MatchesNotifier, MatchesState>(
    (ref) => MatchesNotifier(MatchesState(
            matchesModelObj: MatchesModel(matchesItemList: [
          MatchesItemModel(icon: ImageConstant.imgIconHome),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40),
          MatchesItemModel(icon: ImageConstant.imgIconHome),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40),
          MatchesItemModel(icon: ImageConstant.imgIconHome),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40),
          MatchesItemModel(icon: ImageConstant.imgIconHome),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40),
          MatchesItemModel(icon: ImageConstant.imgIcon40x40)
        ], matchItemList: [
          MatchItemModel(
              distance: "1.3 km away",
              jamesCounter: "James, 20",
              hanover: "HANOVER",
              image: ImageConstant.imgIvanaCajina7),
          MatchItemModel(
              distance: "1.3 km away",
              jamesCounter: "James, 20",
              hanover: "HANOVER",
              image: ImageConstant.imgIvanaCajina7),
          MatchItemModel(
              distance: "1.3 km away",
              jamesCounter: "James, 20",
              hanover: "HANOVER",
              image: ImageConstant.imgIvanaCajina7),
          MatchItemModel(
              distance: "1.3 km away",
              jamesCounter: "James, 20",
              hanover: "HANOVER",
              image: ImageConstant.imgIvanaCajina7)
        ]))));

class MatchesNotifier extends StateNotifier<MatchesState> {
  MatchesNotifier(MatchesState state) : super(state);
}
