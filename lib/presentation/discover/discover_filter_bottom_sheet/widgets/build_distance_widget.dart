part of '../../discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';

Widget _buildDistance(BuildContext context) {
  return Consumer(
    builder: (context, ref, _) {
      return CustomTextFormField(
        width: 60.h,
        controller: ref.watch(discoverFilterNotifier).distanceController,
        hintText: LocalizationKeys.lbl10Km.name.tr,
        readOnly: true,
        borderDecoration: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.h),
          borderSide: BorderSide(
            color: appTheme.purple200,
            width: 1,
          ),
        ),
      );
    },
  );
}

Widget _buildDistanceTitle(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Text(
          LocalizationKeys.lblDistance.name.tr,
          style: theme.textTheme.titleMedium,
        ),
      ),
      _buildDistance(context),
    ],
  );
}
