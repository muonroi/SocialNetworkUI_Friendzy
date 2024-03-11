part of '../../login_interest_screen/login_interest_screen.dart';

Widget _buildInterests(BuildContext context) {
  return Consumer(builder: (context, ref, _) {
    return Wrap(
        runSpacing: 25.v,
        spacing: 8.h,
        children: List<Widget>.generate(
            ref
                    .watch(loginSelectInterestNotifier)
                    .loginSelectInterestModelObj
                    ?.interestsItemList
                    .length ??
                0, (index) {
          InterestsItemModel model = ref
                  .watch(loginSelectInterestNotifier)
                  .loginSelectInterestModelObj
                  ?.interestsItemList[index] ??
              InterestsItemModel();
          return InterestsItemWidget(model, onSelectedChipView: (value) {
            ref
                .read(loginSelectInterestNotifier.notifier)
                .onSelectedChipView(index, value);
          });
        }));
  });
}
