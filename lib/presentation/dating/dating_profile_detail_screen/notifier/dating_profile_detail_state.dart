part of 'dating_profile_detail_notifier.dart';

// ignore: must_be_immutable
class DatingProfileDetailsState extends Equatable {
  DatingProfileDetailsState({this.datingProfileDetailsModelObj});
  FriendModel? datingProfileDetailsModelObj;
  @override
  List<Object?> get props => [
        datingProfileDetailsModelObj,
      ];
  DatingProfileDetailsState copyWith(
      {FriendModel? datingProfileDetailsModelObj}) {
    return DatingProfileDetailsState(
      datingProfileDetailsModelObj:
          datingProfileDetailsModelObj ?? this.datingProfileDetailsModelObj,
    );
  }
}
