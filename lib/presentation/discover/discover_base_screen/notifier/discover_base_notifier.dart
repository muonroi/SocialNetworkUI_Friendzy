import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/discover_base_model.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/interest_item_model.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/new_user_item_model.dart';

part 'discover_base_state.dart';

final discoverNotifier =
    StateNotifierProvider<DiscoverNotifier, DiscoverAroundState>(
  (ref) => DiscoverNotifier(DiscoverAroundState(
    discoverModelObj: DiscoverModel(newUsersItemList: [
      NewUsersItemModel(
          tag: "NEW",
          distance: "16 km",
          halimaCounter: "Halima, 19",
          berlin: "BERLIN"),
      NewUsersItemModel(tag: "NEW", distance: "4,8 km", berlin: "MUNICH"),
      NewUsersItemModel(
          tag: "NEW",
          distance: "2,2 km",
          halimaCounter: "James, 20",
          berlin: "HANOVER"),
      NewUsersItemModel(
          tag: "NEW",
          distance: "16 km",
          halimaCounter: "Halima, 19",
          berlin: "BERLIN"),
      NewUsersItemModel(tag: "NEW", distance: "4,8 km", berlin: "MUNICH"),
      NewUsersItemModel(
          tag: "NEW",
          distance: "2,2 km",
          halimaCounter: "James, 20",
          berlin: "HANOVER")
    ], interestItemList: List.generate(7, (index) => InterestItemModel())),
  )),
);

class DiscoverNotifier extends StateNotifier<DiscoverAroundState> {
  DiscoverNotifier(DiscoverAroundState state) : super(state);
  void onSelectedChipView(
    int index,
    bool value,
  ) {
    List<InterestItemModel> newList =
        List<InterestItemModel>.from(state.discoverModelObj!.interestItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        discoverModelObj:
            state.discoverModelObj?.copyWith(interestItemList: newList));
  }
}
