part of 'make_friend_notifier.dart';

// ignore: must_be_immutable
class HomeMakeFriendsState extends Equatable {
  HomeMakeFriendsState({this.homeMakeFriendsModelObj});
  HomeMakeFriendsModel? homeMakeFriendsModelObj;
  @override
  List<Object?> get props => [
        homeMakeFriendsModelObj,
      ];
  HomeMakeFriendsState copyWith(
      {HomeMakeFriendsModel? homeMakeFriendsModelObj}) {
    return HomeMakeFriendsState(
      homeMakeFriendsModelObj:
          homeMakeFriendsModelObj ?? this.homeMakeFriendsModelObj,
    );
  }
}
