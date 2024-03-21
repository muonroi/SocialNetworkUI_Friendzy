import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ProfileCategoryItemModel extends Equatable {
  ProfileCategoryItemModel({
    this.category,
    this.isSelected,
  }) {
    category = category ?? "🍃 Nature";
    isSelected = isSelected ?? false;
  }
  String? category;
  bool? isSelected;

  ProfileCategoryItemModel copyWith(
      {String? category,
      bool? isSelected,
      String? gender,
      int? age,
      int? countFriends,
      int? height,
      List<String>? languages}) {
    return ProfileCategoryItemModel(
      category: category ?? this.category,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [category, isSelected];
}
