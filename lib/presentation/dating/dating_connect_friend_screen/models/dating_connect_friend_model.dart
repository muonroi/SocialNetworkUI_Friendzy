import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/models/category_item_model.dart';

// ignore: must_be_immutable
class ConnectMakeFriendsModel extends Equatable {
  ConnectMakeFriendsModel({this.categoryItemList = const []});
  List<CategoryItemModel> categoryItemList;
  ConnectMakeFriendsModel copyWith(
      {List<CategoryItemModel>? categoryItemList}) {
    return ConnectMakeFriendsModel(
      categoryItemList: categoryItemList ?? this.categoryItemList,
    );
  }

  @override
  List<Object?> get props => [categoryItemList];
}
