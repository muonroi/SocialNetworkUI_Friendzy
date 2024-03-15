import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/discover/discover_search_screen/models/discover_search_model.dart';
part 'discover_search_state.dart';

final discoverSearchNotifier =
    StateNotifierProvider<DiscoverSearchNotifier, DiscoverSearchState>(
  (ref) => DiscoverSearchNotifier(DiscoverSearchState(
    searchController: TextEditingController(),
    discoverSearchModelObj: const DiscoverSearchModel(),
  )),
);

class DiscoverSearchNotifier extends StateNotifier<DiscoverSearchState> {
  DiscoverSearchNotifier(DiscoverSearchState state) : super(state);
  void onSelected(
    int index,
    bool value,
  ) {}
}
