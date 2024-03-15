part of '../../discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';

Widget _buildButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildReset(context),
      _buildApply(context),
    ],
  );
}
