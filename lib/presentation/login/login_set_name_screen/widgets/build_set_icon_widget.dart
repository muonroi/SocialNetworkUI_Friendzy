part of '../login_set_name_screen.dart';

/// Section Widget
Widget _buildIcon(BuildContext context, String nameValidationError) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      height: 120.v,
      width: 327.h,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        SizedBox(
          child: CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(16.h),
            decoration: nameValidationError != "None"
                ? IconButtonStyleHelper.outlineGray
                : IconButtonStyleHelper.outlinePrimary,
            alignment: Alignment.topRight,
            onTap: nameValidationError != "None"
                ? null
                : () => onTapScreenTitle(AppRoutes.loginBirthdateScreen),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconOnerrorcontainer),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: LocalizationKeys.lbl15.name.tr,
                            style: theme.textTheme.titleLarge),
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 15.v),
                  Container(
                      height: 6.v,
                      width: 327.h,
                      decoration: BoxDecoration(
                          color: appTheme.purple200.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.h)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.h),
                          child: LinearProgressIndicator(
                              value: 0.2,
                              backgroundColor:
                                  appTheme.purple200.withOpacity(0.2),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.purple200))))
                ]))
      ]));
}
