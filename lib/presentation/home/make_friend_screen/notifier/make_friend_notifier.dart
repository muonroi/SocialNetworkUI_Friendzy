import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/models/make_friend_model.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/models/travel_item_model.dart';
part 'make_friend_state.dart';

final homeMakeFriendsNotifier =
    StateNotifierProvider<HomeMakeFriendsNotifier, HomeMakeFriendsState>(
  (ref) => HomeMakeFriendsNotifier(HomeMakeFriendsState(
    homeMakeFriendsModelObj: HomeMakeFriendsModel(travelItemList: [
      TravelItemModel(
          ifYouCouldLive:
              "If you could live anywhere in the world, where would you pick?",
          mirandaKehlani: "Miranda Kehlani",
          stuttgart: "STUTTGART",
          icon: ImageConstant.likeIcon)
    ]),
  )),
);

class HomeMakeFriendsNotifier extends StateNotifier<HomeMakeFriendsState> {
  HomeMakeFriendsNotifier(HomeMakeFriendsState state) : super(state);
}
