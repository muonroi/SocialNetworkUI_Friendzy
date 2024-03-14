part of '../../discover_base_screen/discover_base_screen.dart';

Widget _buildCategory(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(left: 16.h),
    child: IntrinsicWidth(
      child: Consumer(
        builder: (context, ref, _) {
          return Wrap(
            runSpacing: 12.v,
            spacing: 12.h,
            children: List<Widget>.generate(
              ref
                      .watch(discoverNotifier)
                      .discoverModelObj
                      ?.interestItemList
                      .length ??
                  0,
              (index) {
                InterestItemModel model = ref
                        .watch(discoverNotifier)
                        .discoverModelObj
                        ?.interestItemList[index] ??
                    InterestItemModel();
                return InterestItemWidget(
                  model,
                  onSelectedChipView1: (value) {
                    ref
                        .read(discoverNotifier.notifier)
                        .onSelectedChipView(index, value);
                  },
                );
              },
            ),
          );
        },
      ),
    ),
  );
}
