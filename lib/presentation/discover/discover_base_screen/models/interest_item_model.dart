import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class InterestItemModel extends Equatable {
  InterestItemModel({
    this.category,
    this.isSelected,
  }) {
    category = category ?? "⚽️ Football";
    isSelected = isSelected ?? false;
  }
  String? category;
  bool? isSelected;
  InterestItemModel copyWith({
    String? category,
    bool? isSelected,
  }) {
    return InterestItemModel(
      category: category ?? this.category,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [category, isSelected];
}
