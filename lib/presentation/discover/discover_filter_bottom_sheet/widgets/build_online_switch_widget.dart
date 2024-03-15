part of '../../discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';

Widget _buildOnlineNow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Text(
          LocalizationKeys.lblOnlineNow.name.tr,
          style: theme.textTheme.titleMedium,
        ),
      ),
      Consumer(
        builder: (context, ref, _) {
          return CustomSwitch(
            value: ref.watch(discoverFilterNotifier).isSelectedSwitch,
            onChange: (value) {
              ref
                  .read(discoverFilterNotifier.notifier)
                  .changeSwitchOnline(value);
            },
          );
        },
      ),
    ],
  );
}
