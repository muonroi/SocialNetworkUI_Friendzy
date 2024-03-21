part of '../discover_filter_bottom_sheet.dart';

Widget _buildAge(BuildContext context) {
  return Consumer(
    builder: (context, ref, _) {
      return CustomTextFormField(
        width: 75.h,
        controller: ref.watch(discoverFilterNotifier).ageController,
        hintText: LocalizationKeys.lbl2025.name.tr,
        textInputAction: TextInputAction.done,
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

Widget _buildTitleAge(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: Text(
          LocalizationKeys.lblAge.name.tr,
          style: theme.textTheme.titleMedium,
        ),
      ),
      _buildAge(context),
    ],
  );
}
