part of 'discover_base_user_around_notifier.dart';

// ignore: must_be_immutable
class DiscoverAroundState extends Equatable {
  DiscoverAroundState({required this.discoverAroundModelObj});
  DiscoverAroundModel? discoverAroundModelObj;
  @override
  List<Object?> get props => [
        discoverAroundModelObj,
      ];
  DiscoverAroundState copyWith({DiscoverAroundModel? discoverAroundModelObj}) {
    return DiscoverAroundState(
      discoverAroundModelObj:
          discoverAroundModelObj ?? this.discoverAroundModelObj,
    );
  }
}
