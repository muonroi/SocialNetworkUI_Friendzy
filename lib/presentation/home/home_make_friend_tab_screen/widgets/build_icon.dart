part of '../home_make_friend_tab_screen.dart';

Widget _buildIcon(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(left: 16.h),
    child: IntrinsicWidth(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              children: [
                Container(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  decoration: AppDecoration.fillGray400.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 42.v),
                      Container(
                        height: 17.5.adaptSize,
                        width: 17.5.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconAdd,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9.v),
                Text(
                  LocalizationKeys.lblMyStory.name.tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(3.h),
                  decoration: AppDecoration.outlinePurple200.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Container(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  LocalizationKeys.lblFabian.name.tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: appTheme.purple200,
                      width: 2.h,
                    ),
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Container(
                    height: 64.adaptSize,
                    width: 64.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlinePurple200.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder30,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          radius: BorderRadius.circular(
                            28.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.gray400,
                              borderRadius: BorderRadius.circular(
                                28.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: theme.colorScheme.onPrimary,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: const Offset(
                                    0,
                                    0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  LocalizationKeys.lblClara2.name.tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(3.h),
                  decoration: AppDecoration.outlinePurple200.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Container(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  LocalizationKeys.lblFabian.name.tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: appTheme.purple200,
                      width: 2.h,
                    ),
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Container(
                    height: 64.adaptSize,
                    width: 64.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outlinePurple200.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder30,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          radius: BorderRadius.circular(
                            28.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.gray400,
                              borderRadius: BorderRadius.circular(
                                28.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  LocalizationKeys.lblGeorge.name.tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
