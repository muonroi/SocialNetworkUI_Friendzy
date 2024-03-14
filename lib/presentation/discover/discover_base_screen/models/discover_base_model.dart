import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/interest_item_model.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/new_user_item_model.dart';

// ignore: must_be_immutable
class DiscoverModel extends Equatable {
  DiscoverModel({
    this.newUsersItemList = const [],
    this.interestItemList = const [],
  });
  List<NewUsersItemModel> newUsersItemList;
  List<InterestItemModel> interestItemList;
  DiscoverModel copyWith({
    List<NewUsersItemModel>? newUsersItemList,
    List<InterestItemModel>? interestItemList,
  }) {
    return DiscoverModel(
      newUsersItemList: newUsersItemList ?? this.newUsersItemList,
      interestItemList: interestItemList ?? this.interestItemList,
    );
  }

  @override
  List<Object?> get props => [newUsersItemList, interestItemList];
}
