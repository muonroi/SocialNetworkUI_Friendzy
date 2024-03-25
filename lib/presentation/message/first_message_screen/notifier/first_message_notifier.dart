import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/message/first_message_screen/models/first_message_model.dart';
part 'first_message_state.dart';

final firstTimeChatNotifier =
    StateNotifierProvider<FirstTimeChatNotifier, FirstTimeChatState>((ref) =>
        FirstTimeChatNotifier(FirstTimeChatState(
            firstTimeChatModelObj: FirstTimeChatModel(
                friendName: "Clara",
                timeConnected: 11,
                friendImage: ImageConstant.imgWoman,
                type: 'mins'))));

class FirstTimeChatNotifier extends StateNotifier<FirstTimeChatState> {
  FirstTimeChatNotifier(FirstTimeChatState state) : super(state);
}
