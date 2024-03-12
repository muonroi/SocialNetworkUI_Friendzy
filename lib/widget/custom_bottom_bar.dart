// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

class CustomBottomBar extends StatefulWidget {
  final Function onChanged;

  const CustomBottomBar({Key? key, required this.onChanged}) : super(key: key);

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconHome,
      activeIcon: ImageConstant.imgIconHome,
      type: BottomBarEnum.imgIconHome,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconPrimary24x24,
      activeIcon: ImageConstant.imgIconPrimary24x24,
      type: BottomBarEnum.Iconprimary24x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcon24x24,
      activeIcon: ImageConstant.imgIcon24x24,
      type: BottomBarEnum.Icon24x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcon3,
      activeIcon: ImageConstant.imgIcon3,
      type: BottomBarEnum.Icon3,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchPrimary,
      activeIcon: ImageConstant.imgSearchPrimary,
      type: BottomBarEnum.Searchprimary,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(32.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.purple80026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  widget.onChanged.call(bottomMenuList[index].type);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? appTheme.purple200 // Active color
                      : Colors.transparent, // Inactive color
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: selectedIndex == index
                        ? Colors.white
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: CustomImageView(
                  imagePath: selectedIndex == index
                      ? bottomMenuList[index].activeIcon
                      : bottomMenuList[index].icon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            label: '',
          );
        }),
      ),
    );
  }
}

enum BottomBarEnum {
  imgIconHome,
  Iconprimary24x24,
  Icon24x24,
  Icon3,
  Searchprimary,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;
  String activeIcon;
  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
