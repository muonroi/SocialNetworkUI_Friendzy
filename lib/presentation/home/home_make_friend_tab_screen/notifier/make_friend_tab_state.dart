part of 'make_friend_tab_notifier.dart';

// ignore: must_be_immutable
class HomeMakeFriendsTabContainerState extends Equatable {
  HomeMakeFriendsTabContainerState(
      {this.homeMakeFriendsTabContainerModelObj, this.swiperController});
  AppinioSwiperController? swiperController;
  HomeMakeFriendsTabContainerModel? homeMakeFriendsTabContainerModelObj;
  @override
  List<Object?> get props => [
        swiperController,
        homeMakeFriendsTabContainerModelObj,
      ];

  HomeMakeFriendsTabContainerState copyWith(
      {HomeMakeFriendsTabContainerModel? homeMakeFriendsTabContainerModelObj,
      AppinioSwiperController? swiperController}) {
    return HomeMakeFriendsTabContainerState(
      homeMakeFriendsTabContainerModelObj:
          homeMakeFriendsTabContainerModelObj ??
              this.homeMakeFriendsTabContainerModelObj,
      swiperController: swiperController ?? this.swiperController,
    );
  }

  String getImagePath() {
    //Get image path from shared preference or local storage
    return ImageConstant.imgIvanaCajina7;
  }
}
