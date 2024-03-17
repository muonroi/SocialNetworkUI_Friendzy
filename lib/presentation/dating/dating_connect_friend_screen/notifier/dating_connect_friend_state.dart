part of 'dating_connect_friend_notifier.dart';

// ignore: must_be_immutable
class ConnectMakeFriendsState extends Equatable {
  ConnectMakeFriendsState({this.connectMakeFriendsModelObj});
  ConnectMakeFriendsModel? connectMakeFriendsModelObj;
  @override
  List<Object?> get props => [
        connectMakeFriendsModelObj,
      ];
  ConnectMakeFriendsState copyWith(
      {ConnectMakeFriendsModel? connectMakeFriendsModelObj}) {
    return ConnectMakeFriendsState(
      connectMakeFriendsModelObj:
          connectMakeFriendsModelObj ?? this.connectMakeFriendsModelObj,
    );
  }
}
