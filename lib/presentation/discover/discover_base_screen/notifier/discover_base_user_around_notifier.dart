import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/discover_around_model.dart';

part 'discover_base_user_around_state.dart';

final discoverAroundNotifier =
    StateNotifierProvider<DiscoverAroundNotifier, DiscoverAroundState>(
  (ref) => DiscoverAroundNotifier(DiscoverAroundState(
      discoverAroundModelObj: DiscoverAroundModel(userDiscoverAroundModelList: [
    UserDiscoverAroundModel(
        userId: 0,
        latitude: 10.831870,
        longitude: 106.772250,
        imageUrl: ImageConstant.imgIvanaCajina7,
        isUser: true),
    UserDiscoverAroundModel(
        userId: 2,
        latitude: 10.835250,
        longitude: 106.766400,
        imageUrl: ImageConstant.imgWoman,
        isUser: false),
  ]))),
);

class DiscoverAroundNotifier extends StateNotifier<DiscoverAroundState> {
  DiscoverAroundNotifier(DiscoverAroundState state) : super(state);
}
