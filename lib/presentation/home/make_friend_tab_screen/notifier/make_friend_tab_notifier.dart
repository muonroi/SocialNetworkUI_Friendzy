import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/home/make_friend_tab_screen/models/make_friend_tab_model.dart';

part 'make_friend_tab_state.dart';

final homeMakeFriendsTabContainerNotifier = StateNotifierProvider<
    HomeMakeFriendsTabContainerNotifier, HomeMakeFriendsTabContainerState>(
  (ref) => HomeMakeFriendsTabContainerNotifier(HomeMakeFriendsTabContainerState(
    homeMakeFriendsTabContainerModelObj:
        const HomeMakeFriendsTabContainerModel(),
  )),
);

class HomeMakeFriendsTabContainerNotifier
    extends StateNotifier<HomeMakeFriendsTabContainerState> {
  HomeMakeFriendsTabContainerNotifier(HomeMakeFriendsTabContainerState state)
      : super(state);
}
