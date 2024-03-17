import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/models/category_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/models/dating_connect_friend_model.dart';

part 'dating_connect_friend_state.dart';

final connectMakeFriendsNotifier =
    StateNotifierProvider<ConnectMakeFriendsNotifier, ConnectMakeFriendsState>(
        (ref) => ConnectMakeFriendsNotifier(ConnectMakeFriendsState(
            connectMakeFriendsModelObj: ConnectMakeFriendsModel(
                categoryItemList:
                    List.generate(3, (index) => CategoryItemModel())))));

class ConnectMakeFriendsNotifier
    extends StateNotifier<ConnectMakeFriendsState> {
  ConnectMakeFriendsNotifier(ConnectMakeFriendsState state) : super(state);
  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<CategoryItemModel> newList = List<CategoryItemModel>.from(
        state.connectMakeFriendsModelObj!.categoryItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        connectMakeFriendsModelObj: state.connectMakeFriendsModelObj
            ?.copyWith(categoryItemList: newList));
  }
}
