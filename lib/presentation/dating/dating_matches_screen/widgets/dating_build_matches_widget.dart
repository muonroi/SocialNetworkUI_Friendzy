part of '../dating_matches_screen.dart';

Widget _buildMatches(BuildContext context) {
  return SizedBox(
    height: 90.h,
    child: Consumer(builder: (context, ref, _) {
      return ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(right: 187),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20);
        },
        itemCount: ref
                .watch(matchesNotifier)
                .matchesModelObj
                ?.matchesItemList
                .length ??
            0,
        itemBuilder: (context, index) {
          MatchesItemModel model = ref
                  .watch(matchesNotifier)
                  .matchesModelObj
                  ?.matchesItemList[index] ??
              MatchesItemModel();
          return MatchesItemWidget(model);
        },
      );
    }),
  );
}
