part of 'discover_filter_notifier.dart';

// ignore: must_be_immutable
class DiscoverFilterState extends Equatable {
  DiscoverFilterState({
    this.distanceController,
    this.ageController,
    this.makeFriends = false,
    this.dating = false,
    this.isSelectedSwitch = false,
    this.discoverFilterModelObj,
  });
  TextEditingController? distanceController;
  TextEditingController? ageController;
  DiscoverFilterModel? discoverFilterModelObj;
  bool makeFriends;
  bool dating;
  bool isSelectedSwitch;
  @override
  List<Object?> get props => [
        distanceController,
        ageController,
        makeFriends,
        dating,
        isSelectedSwitch,
        discoverFilterModelObj,
      ];
  DiscoverFilterState copyWith({
    TextEditingController? distanceController,
    TextEditingController? ageController,
    bool? makeFriends,
    bool? dating,
    bool? isSelectedSwitch,
    DiscoverFilterModel? discoverFilterModelObj,
  }) {
    return DiscoverFilterState(
      distanceController: distanceController ?? this.distanceController,
      ageController: ageController ?? this.ageController,
      makeFriends: makeFriends ?? this.makeFriends,
      dating: dating ?? this.dating,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      discoverFilterModelObj:
          discoverFilterModelObj ?? this.discoverFilterModelObj,
    );
  }
}
