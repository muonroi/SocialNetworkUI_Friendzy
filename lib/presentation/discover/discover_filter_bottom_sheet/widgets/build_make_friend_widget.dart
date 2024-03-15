part of '../../discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';

Widget _buildMakeFriends(BuildContext context) {
  return Consumer(
    builder: (context, ref, _) {
      return CustomCheckboxButton(
        text: LocalizationKeys.lblMakeFriends.name.tr,
        value: ref.watch(discoverFilterNotifier).makeFriends,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
          ref
              .read(discoverFilterNotifier.notifier)
              .changeMakeFriendCheckBox(value);
        },
      );
    },
  );
}
