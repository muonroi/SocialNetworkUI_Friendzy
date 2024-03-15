part of 'discover_interest_notifier.dart';

// ignore: must_be_immutable
class DiscoverByInterestState extends Equatable {
  DiscoverByInterestState({this.discoverByInterestModelObj});
  List<DiscoverByInterestModel>? discoverByInterestModelObj;
  @override
  List<Object?> get props => [
        discoverByInterestModelObj,
      ];
  DiscoverByInterestState copyWith(
      {List<DiscoverByInterestModel>? discoverByInterestModelObj}) {
    return DiscoverByInterestState(
      discoverByInterestModelObj:
          discoverByInterestModelObj ?? this.discoverByInterestModelObj,
    );
  }
}
