import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/make_friend_screen.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_title.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_trailing_iconbutton.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_bottom_bar.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

class HomeMakeFriendsTabScreen extends ConsumerStatefulWidget {
  const HomeMakeFriendsTabScreen({Key? key})
      : super(
          key: key,
        );
  @override
  HomeMakeFriendsTabScreenState createState() =>
      HomeMakeFriendsTabScreenState();
}

class HomeMakeFriendsTabScreenState
    extends ConsumerState<HomeMakeFriendsTabScreen>
    with TickerProviderStateMixin {
  late TabController tabViewController;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    tabViewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      _buildIcon(context),
                      SizedBox(height: 26.v),
                      _buildTabView(context),
                      Expanded(
                        child: SizedBox(
                          height: 450.v,
                          child: TabBarView(
                            controller: tabViewController,
                            children: const [
                              HomeMakeFriendsScreen(),
                              HomeMakeFriendsScreen(),
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
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(24.h),
          child: _buildBottomBar(context),
        ),
        //floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      title: AppbarTitle(
        text: LocalizationKeys.lblFriendzy.name.tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconPrimary48x48,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 4.v,
          ),
        ),
      ],
    );
  }

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

  Widget _buildTabView(BuildContext context) {
    return Container(
      height: 40.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.purple5002,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      child: TabBar(
        controller: tabViewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.primary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            16.h,
          ),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            child: Text(
              LocalizationKeys.lblMakeFriends.name.tr,
            ),
          ),
          Tab(
            child: Text(
              LocalizationKeys.lblSearchPartners.name.tr,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
