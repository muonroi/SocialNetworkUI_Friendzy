part of 'discover_base_notifier.dart';

// ignore: must_be_immutable
class DiscoverAroundState extends Equatable {
  DiscoverAroundState({this.discoverModelObj});
  DiscoverModel? discoverModelObj;
  @override
  List<Object?> get props => [
        discoverModelObj,
      ];
  DiscoverAroundState copyWith({DiscoverModel? discoverModelObj}) {
    return DiscoverAroundState(
      discoverModelObj: discoverModelObj ?? this.discoverModelObj,
    );
  }
}
