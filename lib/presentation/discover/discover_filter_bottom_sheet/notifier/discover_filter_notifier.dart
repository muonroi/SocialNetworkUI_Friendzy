import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/discover/discover_filter_bottom_sheet/models/discover_filter_model.dart';

part 'discover_filter_state.dart';

final discoverFilterNotifier =
    StateNotifierProvider<DiscoverFilterNotifier, DiscoverFilterState>(
  (ref) => DiscoverFilterNotifier(DiscoverFilterState(
    distanceController: TextEditingController(),
    ageController: TextEditingController(),
    makeFriends: false,
    dating: false,
    isSelectedSwitch: false,
    discoverFilterModelObj: const DiscoverFilterModel(),
  )),
);

class DiscoverFilterNotifier extends StateNotifier<DiscoverFilterState> {
  DiscoverFilterNotifier(DiscoverFilterState state) : super(state);
  void changeMakeFriendCheckBox(bool value) {
    state = state.copyWith(makeFriends: value);
  }

  void changeDatingCheckBox(bool value) {
    state = state.copyWith(dating: value);
  }

  void changeDistance(String value) {
    state.distanceController?.text = value;
    state = state.copyWith(
      distanceController: state.distanceController,
    );
  }

  void changeAgeRange(String value) {
    state.ageController?.text = value;
    state = state.copyWith(
      ageController: state.ageController,
    );
  }

  void changeSwitchOnline(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}
