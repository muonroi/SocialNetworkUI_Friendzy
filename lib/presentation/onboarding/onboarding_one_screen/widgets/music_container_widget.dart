part of '../../onboarding_one_screen/onboarding_one_screen.dart';

/// Section Widget
Widget _buildMusicContainer(BuildContext context) {
  return SizedBox(
    height: 338.v,
    width: double.maxFinite,
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 19.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder24,
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup14,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMusic(context),
                SizedBox(height: 47.v),
                Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 148.v,
                        width: 124.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 124.adaptSize,
                                width: 124.adaptSize,
                                decoration: BoxDecoration(
                                  color: appTheme.gray400,
                                  borderRadius: BorderRadius.circular(
                                    62.h,
                                  ),
                                  border: Border.all(
                                    color: appTheme.purple200,
                                    width: 6.h,
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
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    62.h,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgWoman,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 40.v,
                                width: 76.h,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 32.v,
                                        width: 76.h,
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTelevision,
                                              height: 32.v,
                                              width: 76.h,
                                              radius: BorderRadius.circular(
                                                8.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 6.v),
                                                child: Text(
                                                  LocalizationKeys
                                                      .lblClara.name.tr,
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 30.h),
                                        padding: EdgeInsets.all(5.h),
                                        decoration:
                                            AppDecoration.fillPurple.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: Container(
                                          height: 6.adaptSize,
                                          width: 6.adaptSize,
                                          decoration: BoxDecoration(
                                            color: appTheme.purple5001,
                                            borderRadius: BorderRadius.circular(
                                              3.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildFashionContainer(context),
                    ],
                  ),
                ),
                SizedBox(height: 53.v),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 148.v,
            width: 124.h,
            margin: EdgeInsets.only(right: 40.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 124.adaptSize,
                    width: 124.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(
                        62.h,
                      ),
                      border: Border.all(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                        width: 6.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.pink50C6,
                          spreadRadius: 2.h,
                          blurRadius: 40.h,
                          offset: const Offset(
                            0,
                            45,
                          ),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        62.h,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIvanaCajina7,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 40.v,
                    width: 65.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 32.v,
                            width: 65.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 32.v,
                                  width: 65.h,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 6.v),
                                    child: Text(
                                      LocalizationKeys.lblYou.name.tr,
                                      style: CustomTextStyles.titleSmallPrimary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 24.h),
                            padding: EdgeInsets.all(5.h),
                            decoration:
                                AppDecoration.fillOnErrorContainer.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Container(
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.purple5001,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                            ),
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
      ],
    ),
  );
}

/// Section Widget
Widget _buildMusic(BuildContext context) {
  return CustomOutlinedButton(
    width: 84.h,
    text: LocalizationKeys.lblMusic.name.tr,
    margin: EdgeInsets.only(left: 38.h),
    leftIcon: Container(
      margin: EdgeInsets.only(right: 6.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgMusic,
        height: 20.v,
        width: 16.h,
      ),
    ),
    buttonStyle: CustomButtonStyles.outlinePurple,
    buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
  );
}

/// Section Widget
Widget _buildFashionContainer(BuildContext context) {
  return CustomOutlinedButton(
    width: 95.h,
    text: LocalizationKeys.lblFashion.name.tr,
    margin: EdgeInsets.only(
      top: 95.v,
      bottom: 17.v,
    ),
    leftIcon: Container(
      margin: EdgeInsets.only(right: 6.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgFashion,
        height: 20.v,
        width: 16.h,
      ),
    ),
    buttonStyle: CustomButtonStyles.outlinePurple,
    buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
  );
}
