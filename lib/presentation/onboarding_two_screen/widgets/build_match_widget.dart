part of '../../onboarding_two_screen/onboarding_two_screen.dart';

/// Section Widget
Widget _buildMatch(BuildContext context) {
  return Card(
    clipBehavior: Clip.antiAlias,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusStyle.roundedBorder24,
    ),
    child: Container(
      height: 322.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
        vertical: 39.v,
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
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 160.v,
              width: 132.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.imgWoman),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.h),
                  topRight: Radius.circular(80.h),
                  bottomLeft: Radius.circular(80.h),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 160.v,
              width: 132.h,
              margin: EdgeInsets.only(
                right: 1.h,
                bottom: 28.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.imgIvanaCajina7),
                  fit: BoxFit.cover,
                ),
                color: appTheme.gray400,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.h),
                  topRight: Radius.circular(80.h),
                  bottomRight: Radius.circular(80.h),
                ),
              ),
            ),
          ),
          CustomOutlinedButton(
            width: 111.h,
            text: LocalizationKeys.lbl100Match.name.tr,
            margin: EdgeInsets.only(
              top: 16.v,
              right: 73.h,
            ),
            buttonStyle: CustomButtonStyles.outlinePurpleTL18,
            buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    ),
  );
}
