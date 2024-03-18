import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_screen/models/make_friend_model.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_screen/models/travel_item_model.dart';
part 'make_friend_state.dart';

final homeMakeFriendsNotifier =
    StateNotifierProvider<HomeMakeFriendsNotifier, HomeMakeFriendsState>(
  (ref) => HomeMakeFriendsNotifier(HomeMakeFriendsState(
    homeMakeFriendsModelObj: HomeMakeFriendsModel(travelItemList: [
      TravelItemModel(
        id: '0',
        postTitle:
            "If you could live anywhere in the world, where would you pick?",
        postImage:
            'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80',
        author: "Miranda Kehlani",
        address: "STUTTGART",
        icon: ImageConstant.likeIcon,
      ),
      TravelItemModel(
        id: '0',
        postTitle:
            "If you could live anywhere in the world, where would you pick?",
        postImage:
            'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80',
        author: "Miranda Kehlani",
        address: "STUTTGART",
        icon: ImageConstant.likeIcon,
      ),
      TravelItemModel(
        id: '0',
        postTitle:
            "If you could live anywhere in the world, where would you pick?",
        postImage:
            'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80',
        author: "Miranda Kehlani",
        address: "STUTTGART",
        icon: ImageConstant.likeIcon,
      )
    ]),
  )),
);

class HomeMakeFriendsNotifier extends StateNotifier<HomeMakeFriendsState> {
  HomeMakeFriendsNotifier(HomeMakeFriendsState state) : super(state);
}
