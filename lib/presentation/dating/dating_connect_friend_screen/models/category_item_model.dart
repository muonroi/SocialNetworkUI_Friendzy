import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';

// ignore: must_be_immutable
class CategoryItemModel extends Equatable {
  CategoryItemModel(
      {this.category,
      this.isSelected,
      this.userOfImage,
      this.friendOfImage,
      this.friendOfName,
      this.friendOfAddress}) {
    category = category ?? "🎵 Music";
    isSelected = isSelected ?? false;
    userOfImage = userOfImage ?? ImageConstant.imgIvanaCajina7;
    friendOfImage = friendOfImage ?? ImageConstant.imgWoman;
    friendOfName = friendOfName ?? "John Doe";
    friendOfAddress = friendOfAddress ?? "New York, USA";
  }
  String? category;
  bool? isSelected;
  String? userOfImage;
  String? friendOfImage;
  String? friendOfName;
  String? friendOfAddress;
  CategoryItemModel copyWith(
      {String? category,
      bool? isSelected,
      String? userOfImage,
      String? friendOfImage,
      String? friendOfName,
      String? friendOfAddress}) {
    return CategoryItemModel(
      category: category ?? this.category,
      isSelected: isSelected ?? this.isSelected,
      userOfImage: userOfImage ?? this.userOfImage,
      friendOfImage: friendOfImage ?? this.friendOfImage,
      friendOfName: friendOfName ?? this.friendOfName,
      friendOfAddress: friendOfAddress ?? this.friendOfAddress,
    );
  }

  @override
  List<Object?> get props => [
        category,
        isSelected,
        userOfImage,
        friendOfImage,
        friendOfName,
        friendOfAddress
      ];
}
