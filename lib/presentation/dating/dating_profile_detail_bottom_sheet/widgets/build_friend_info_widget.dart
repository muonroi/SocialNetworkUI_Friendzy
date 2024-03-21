part of '../dating_profile_detail_bottom_sheet.dart';

Widget _buildFriendInfo(
    BuildContext context, DatingProfileDetailsVoneState ref) {
  return Container(
    margin: EdgeInsets.only(top: 20.v),
    width: double.maxFinite,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocalizationKeys.lblAlfredoSInfo.name.tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 19.v),
                _buildSpeak(
                  context,
                  settings: ImageConstant.imgIconMeasure,
                  speak: LocalizationKeys.lblHeight.name.tr,
                  germanEnglish:
                      ref.datingProfileDetailsVoneModelObj!.height!.toString(),
                ),
                SizedBox(height: 12.v),
                const Opacity(
                  opacity: 0.08,
                  child: Divider(),
                ),
                _buildSpeak(
                  context,
                  settings: ImageConstant.imgIconLanguage,
                  speak: LocalizationKeys.lblSpeak.name.tr,
                  germanEnglish: ref
                      .datingProfileDetailsVoneModelObj!.languages!
                      .join(', '),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildSpeak(
  BuildContext context, {
  required String settings,
  required String speak,
  required String germanEnglish,
}) {
  return Row(
    children: [
      CustomImageView(
        imagePath: settings,
        height: 20.adaptSize,
        width: 20.adaptSize,
      ),
      Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Text(
          speak,
          style: CustomTextStyles.bodyLargeGray600.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ),
      const Spacer(),
      Text(
        germanEnglish,
        style: CustomTextStyles.bodyLargeOnPrimaryContainer_1.copyWith(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        ),
      ),
    ],
  );
}
