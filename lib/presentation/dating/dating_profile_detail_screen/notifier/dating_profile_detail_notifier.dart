import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_screen/models/dating_profile_detail_model.dart';
part 'dating_profile_detail_state.dart';

final datingProfileDetailsNotifier = StateNotifierProvider<
        DatingProfileDetailsVoneNotifier, DatingProfileDetailsState>(
    (ref) => DatingProfileDetailsVoneNotifier(
          DatingProfileDetailsState(
              datingProfileDetailsModelObj: FriendModel()),
        ));

class DatingProfileDetailsVoneNotifier
    extends StateNotifier<DatingProfileDetailsState> {
  DatingProfileDetailsVoneNotifier(DatingProfileDetailsState state)
      : super(state);
}
