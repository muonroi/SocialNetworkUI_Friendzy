import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/models/login_select_interest_item_model.dart';

// ignore: must_be_immutable
class LoginSelectInterestModel extends Equatable {
  LoginSelectInterestModel({this.interestsItemList = const []});
  List<InterestsItemModel> interestsItemList;
  LoginSelectInterestModel copyWith(
      {List<InterestsItemModel>? interestsItemList}) {
    return LoginSelectInterestModel(
      interestsItemList: interestsItemList ?? this.interestsItemList,
    );
  }

  @override
  List<Object?> get props => [interestsItemList];
}
