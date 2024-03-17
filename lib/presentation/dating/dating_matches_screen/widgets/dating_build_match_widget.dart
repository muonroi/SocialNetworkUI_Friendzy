part of '../dating_matches_screen.dart';

Widget _buildMatch(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: Consumer(builder: (context, ref, _) {
      return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 265.h,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        physics: const BouncingScrollPhysics(),
        itemCount:
            ref.watch(matchesNotifier).matchesModelObj?.matchItemList.length ??
                0,
        itemBuilder: (context, index) {
          MatchItemModel model = ref
                  .watch(matchesNotifier)
                  .matchesModelObj
                  ?.matchItemList[index] ??
              MatchItemModel();
          return MatchItemWidget(model);
        },
      );
    }),
  );
}
