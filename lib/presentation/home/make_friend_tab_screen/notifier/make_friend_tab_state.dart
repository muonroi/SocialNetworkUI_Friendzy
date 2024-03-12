part of 'make_friend_tab_notifier.dart';

// ignore: must_be_immutable
class HomeMakeFriendsTabContainerState extends Equatable {
  HomeMakeFriendsTabContainerState({this.homeMakeFriendsTabContainerModelObj});
  HomeMakeFriendsTabContainerModel? homeMakeFriendsTabContainerModelObj;
  @override
  List<Object?> get props => [
        homeMakeFriendsTabContainerModelObj,
      ];
  HomeMakeFriendsTabContainerState copyWith(
      {HomeMakeFriendsTabContainerModel? homeMakeFriendsTabContainerModelObj}) {
    return HomeMakeFriendsTabContainerState(
      homeMakeFriendsTabContainerModelObj:
          homeMakeFriendsTabContainerModelObj ??
              this.homeMakeFriendsTabContainerModelObj,
    );
  }
}
