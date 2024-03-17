part of '../../home_search_partners_screen/home_search_parent_screen.dart';
Widget _buildButtons(BuildContext context, WidgetRef ref) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CustomIconButton(
        height: 56.adaptSize,
        width: 56.adaptSize,
        padding: EdgeInsets.all(14.h),
        decoration: IconButtonStyleHelper.outlinePrimaryTL28,
        child: CustomImageView(
          imagePath: ImageConstant.imgIconUnlike,
        ),
        onTap: () =>
            ref.watch(homeMakeFriendsTabContainerNotifier.notifier).swipeLeft(),
      ),
      const Spacer(
        flex: 50,
      ),
      CustomIconButton(
        height: 56.adaptSize,
        width: 56.adaptSize,
        padding: EdgeInsets.all(14.h),
        decoration: IconButtonStyleHelper.outlinePrimary,
        child: CustomImageView(
          imagePath: ImageConstant.imgIconStar,
        ),
      ),
      const Spacer(
        flex: 50,
      ),
      CustomIconButton(
        height: 56.adaptSize,
        width: 56.adaptSize,
        padding: EdgeInsets.all(14.h),
        decoration: IconButtonStyleHelper.outlinePrimaryTL281,
        child: CustomImageView(
          imagePath: ImageConstant.imgIconHeart,
        ),
        onTap: () => ref
            .watch(homeMakeFriendsTabContainerNotifier.notifier)
            .swipeRight(),
      ),
    ],
  );
}
