import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/discover/discover_interest_screen/models/discover_interest_model.dart';

part 'discover_interest_state.dart';

final discoverByInterestNotifier =
    StateNotifierProvider<DiscoverByInterestNotifier, DiscoverByInterestState>(
        (ref) => DiscoverByInterestNotifier(DiscoverByInterestState(
            discoverByInterestModelObj: List.generate(
                6,
                (index) => DiscoverByInterestModel(
                    interestTitle: 'Not found $index',
                    interestImage: ImageConstant.imgTravelBackground,
                    interestPeople: ((index / 2) * 1000).toInt(),
                    peopleImages: List.generate(
                        4, (index) => ImageConstant.imgIvanaCajina7))))));

class DiscoverByInterestNotifier
    extends StateNotifier<DiscoverByInterestState> {
  DiscoverByInterestNotifier(DiscoverByInterestState state) : super(state);
}
