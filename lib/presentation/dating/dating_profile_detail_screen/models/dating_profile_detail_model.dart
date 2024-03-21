import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/utils/image_constant.dart';

// ignore: must_be_immutable
class FriendModel extends Equatable {
  FriendModel(
      {this.friendOfImages,
      this.friendOfName,
      this.friendOfAddress,
      this.matchPercent,
      this.age}) {
    friendOfImages = friendOfImages ?? [ImageConstant.imageNotFound];
    friendOfName = friendOfName ?? "John Doe";
    friendOfAddress = friendOfAddress ?? "New York, USA";
    matchPercent = 0.0;
    age = 20;
  }
  List<String>? friendOfImages;
  String? friendOfName;
  String? friendOfAddress;
  double? matchPercent;
  int? age;
  FriendModel copyWith(
      {bool? isSelected,
      String? userOfImage,
      List<String>? friendOfImages,
      String? friendOfName,
      String? friendOfAddress,
      double? matchPercent,
      int? age}) {
    return FriendModel(
        friendOfImages: friendOfImages ?? this.friendOfImages,
        friendOfName: friendOfName ?? this.friendOfName,
        friendOfAddress: friendOfAddress ?? this.friendOfAddress,
        matchPercent: matchPercent ?? this.matchPercent,
        age: age ?? this.age);
  }

  @override
  List<Object?> get props =>
      [friendOfImages, friendOfName, friendOfAddress, matchPercent, age];
}
