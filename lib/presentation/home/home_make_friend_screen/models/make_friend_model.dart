import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_screen/models/travel_item_model.dart';

// ignore: must_be_immutable
class HomeMakeFriendsModel extends Equatable {
  HomeMakeFriendsModel({this.travelItemList = const []});
  List<TravelItemModel> travelItemList;
  HomeMakeFriendsModel copyWith({List<TravelItemModel>? travelItemList}) {
    return HomeMakeFriendsModel(
      travelItemList: travelItemList ?? this.travelItemList,
    );
  }

  @override
  List<Object?> get props => [travelItemList];
}
