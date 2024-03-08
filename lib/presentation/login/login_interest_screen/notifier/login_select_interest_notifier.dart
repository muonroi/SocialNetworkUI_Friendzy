import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/models/login_select_interest_item_model.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/models/login_select_interest_model.dart';

part 'login_select_interest_state.dart';

final loginSelectInterestNotifier = StateNotifierProvider<
        LoginSelectInterestNotifier, LoginSelectInterestState>(
    (ref) => LoginSelectInterestNotifier(LoginSelectInterestState(
        loginSelectInterestModelObj: LoginSelectInterestModel())));

class LoginSelectInterestNotifier
    extends StateNotifier<LoginSelectInterestState> {
  LoginSelectInterestNotifier(LoginSelectInterestState state) : super(state);
  void onInitValue(List<InterestsItemModel> models) {
    Future(() {
      state = state.copyWith(
          loginSelectInterestModelObj: state.loginSelectInterestModelObj
              ?.copyWith(interestsItemList: models));
    });
  }

  void onSelectedChipView(
    int index,
    bool value,
  ) {
    List<InterestsItemModel> newList = List<InterestsItemModel>.from(
        state.loginSelectInterestModelObj!.interestsItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        loginSelectInterestModelObj: state.loginSelectInterestModelObj
            ?.copyWith(interestsItemList: newList));
  }
}
