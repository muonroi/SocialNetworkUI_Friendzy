// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [interests_item_widget] screen.
class InterestsItemModel extends Equatable {
  InterestsItemModel({
    this.category,
    this.imagePath,
    this.isSelected,
  }) {
    category = category;
    isSelected = isSelected ?? false;
  }
  String? category;
  String? imagePath;
  bool? isSelected;
  InterestsItemModel copyWith({
    String? category,
    String? imagePath,
    bool? isSelected,
  }) {
    return InterestsItemModel(
      category: category ?? this.category,
      imagePath: category ?? this.imagePath,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [category, imagePath, isSelected];
}
