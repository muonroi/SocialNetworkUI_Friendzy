import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_bottom_sheet/models/dating_category_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_bottom_sheet/models/dating_profile_detail.dart';
part 'dating_profile_detail_state.dart';

final datingProfileDetailsVoneNotifier = StateNotifierProvider<
    DatingProfileDetailsVoneNotifier, DatingProfileDetailsVoneState>(
  (ref) => DatingProfileDetailsVoneNotifier(DatingProfileDetailsVoneState(
    datingProfileDetailsVoneModelObj: DatingProfileDetailsVoneModel(
        categoryItemList:
            List.generate(3, (index) => ProfileCategoryItemModel())),
  )),
);

class DatingProfileDetailsVoneNotifier
    extends StateNotifier<DatingProfileDetailsVoneState> {
  DatingProfileDetailsVoneNotifier(DatingProfileDetailsVoneState state)
      : super(state);
}
