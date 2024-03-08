part of '../../login_gender_screen/login_gender_screen.dart';

Widget _buildGenderButton(
  BuildContext context,
  WidgetRef ref,
  Gender gender,
  String label,
  String imagePath,
  bool isSelected,
) {
  final theme = Theme.of(context);

  return GestureDetector(
    onTap: () {
      ref.read(loginGenderNotifier.notifier).updateGender(gender);
    },
    child: Stack(children: [
      isSelected
          ? Positioned(
              top: 10.v,
              right: 10.v,
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconPurple200,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 18.h, bottom: 48.v)),
            )
          : Container(),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 24.v),
          decoration: isSelected
              ? AppDecoration.outlinePurple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                  color: Colors.transparent,
                  border: Border.all(color: appTheme.purple200, width: 1.h))
              : AppDecoration.fillOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                  color: Colors.transparent,
                  border: Border.all(color: theme.primaryColor, width: 0.1.h)),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(imagePath: imagePath)),
                SizedBox(height: 17.v),
                Text(label, style: theme.textTheme.bodyLarge),
                SizedBox(height: 2.v)
              ])),
    ]),
  );
}
