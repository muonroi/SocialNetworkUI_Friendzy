part of '../../make_friend_tab_screen/make_friend_tab_screen.dart';

PreferredSizeWidget _buildDiscoverAppBar(BuildContext context) {
  return CustomAppBar(
    height: 66.v,
    title: Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgIconDiscover,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                AppbarSubtitleTwo(
                  text: LocalizationKeys.lblGermany.name.tr,
                  margin: EdgeInsets.only(left: 4.h),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowDown,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          AppbarSubtitleOne(
            text: LocalizationKeys.lblDiscover.name.tr,
          ),
        ],
      ),
    ),
    actions: [
      AppbarTrailingIconbutton(
        imagePath: ImageConstant.imgIconSearchDiscover,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 5.v,
          right: 2.h,
        ),
      ),
      AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconSettingDiscover,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 5.v,
            right: 18.h,
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const DiscoverFilterBottomSheet();
              },
            );
          }),
    ],
  );
}
