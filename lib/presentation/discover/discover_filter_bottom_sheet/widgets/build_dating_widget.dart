part of '../discover_filter_bottom_sheet.dart';

Widget _buildDating(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 16.h),
    child: Consumer(
      builder: (context, ref, _) {
        return CustomCheckboxButton(
          text: LocalizationKeys.lblDating.name.tr,
          value: ref.watch(discoverFilterNotifier).dating,
          onChange: (value) {
            ref
                .read(discoverFilterNotifier.notifier)
                .changeDatingCheckBox(value);
          },
        );
      },
    ),
  );
}
