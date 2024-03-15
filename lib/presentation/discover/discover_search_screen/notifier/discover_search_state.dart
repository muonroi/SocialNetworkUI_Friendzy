part of 'discover_search_notifier.dart';

// ignore: must_be_immutable
class DiscoverSearchState extends Equatable {
  DiscoverSearchState({
    this.searchController,
    this.discoverSearchModelObj,
  });
  TextEditingController? searchController;
  DiscoverSearchModel? discoverSearchModelObj;
  @override
  List<Object?> get props => [
        searchController,
        discoverSearchModelObj,
      ];
  DiscoverSearchState copyWith({
    TextEditingController? searchController,
    DiscoverSearchModel? discoverSearchModelObj,
  }) {
    return DiscoverSearchState(
      searchController: searchController ?? this.searchController,
      discoverSearchModelObj:
          discoverSearchModelObj ?? this.discoverSearchModelObj,
    );
  }
}
