import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/home/make_friend_tab_screen/models/make_friend_tab_model.dart';

part 'make_friend_tab_state.dart';

final homeMakeFriendsTabContainerNotifier = StateNotifierProvider<
    HomeMakeFriendsTabContainerNotifier, HomeMakeFriendsTabContainerState>(
  (ref) => HomeMakeFriendsTabContainerNotifier(HomeMakeFriendsTabContainerState(
    swiperController: AppinioSwiperController(),
    homeMakeFriendsTabContainerModelObj:
        const HomeMakeFriendsTabContainerModel(),
  )),
);
final tabStateProvider = StateProvider<bool>((ref) {
  return true;
});

class HomeMakeFriendsTabContainerNotifier
    extends StateNotifier<HomeMakeFriendsTabContainerState> {
  HomeMakeFriendsTabContainerNotifier(HomeMakeFriendsTabContainerState state)
      : super(state);

  void swipeRight() {
    Future(() => state.swiperController!.swipeRight());
  }

  void swipeLeft() {
    Future(() => state.swiperController!.swipeLeft());
  }
}
