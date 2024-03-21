import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_bottom_sheet/models/dating_category_item_model.dart';

// ignore: must_be_immutable
class DatingProfileDetailsVoneModel extends Equatable {
  DatingProfileDetailsVoneModel(
      {this.categoryItemList = const [],
      this.gender = 'Male',
      this.age = 0,
      this.countFriends = 0,
      this.languages = const ["Vi", "En"],
      this.height = 0,
      this.about = 'lorem53'});
  List<ProfileCategoryItemModel> categoryItemList;
  String? category;
  bool? isSelected;
  String? about;
  String? gender;
  int? age;
  int? countFriends;
  int? height;
  List<String>? languages;
  DatingProfileDetailsVoneModel copyWith(
      {List<ProfileCategoryItemModel>? categoryItemList,
      String? gender,
      int? age,
      int? countFriends,
      int? height,
      List<String>? languages,
      String? about}) {
    return DatingProfileDetailsVoneModel(
        categoryItemList: categoryItemList ?? this.categoryItemList,
        gender: gender ?? this.gender,
        age: age ?? this.age,
        countFriends: countFriends ?? this.countFriends,
        height: height ?? this.height,
        languages: languages ?? this.languages,
        about: about ?? this.about);
  }

  @override
  List<Object?> get props =>
      [categoryItemList, gender, age, countFriends, height, languages];
}
