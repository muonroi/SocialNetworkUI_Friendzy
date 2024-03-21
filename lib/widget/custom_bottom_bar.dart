// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'custom_chat.dart';

class CustomBottomBar extends StatefulWidget {
  final Function onChanged;
  final TabController tabController;

  const CustomBottomBar(
      {Key? key, required this.onChanged, required this.tabController})
      : super(key: key);

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 0;
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: Icon(
        Icons.home_outlined,
        color: theme.colorScheme.primary,
      ),
      activeIcon: Icon(
        Icons.home,
        color: appTheme.gray5003,
      ),
      type: BottomBarEnum.imgIconHome,
    ),
    BottomMenuModel(
      icon: Icon(
        Icons.explore_outlined,
        color: theme.colorScheme.primary,
      ),
      activeIcon: Icon(
        Icons.explore,
        color: appTheme.gray5003,
      ),
      type: BottomBarEnum.Iconprimary24x24,
    ),
    BottomMenuModel(
      icon: Icon(
        Icons.add,
        color: theme.colorScheme.primary,
      ),
      activeIcon: Icon(
        Icons.add,
        color: appTheme.gray5003,
      ),
      type: BottomBarEnum.IconAdd,
    ),
    BottomMenuModel(
      icon: Icon(
        Icons.people_outline,
        color: theme.colorScheme.primary,
      ),
      activeIcon: Icon(
        Icons.people,
        color: appTheme.gray5003,
      ),
      type: BottomBarEnum.Icon3,
    ),
    BottomMenuModel(
      icon: Icon(
        ChatMessage.chatEmpty,
        color: theme.colorScheme.primary,
      ),
      activeIcon: Icon(
        ChatMessage.chat,
        color: appTheme.gray5003,
      ),
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
        child: BottomAppBar(
            color: Colors.transparent,
            shape: const CircularNotchedRectangle(),
            elevation: 0,
            child: TabBar(
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
                widget.onChanged(bottomMenuList[value].type);
              },
              indicatorColor: Colors.transparent,
              labelColor: appTheme.purple200,
              tabs: bottomMenuList.map((e) {
                int index = bottomMenuList.indexOf(e);
                return buildTab(currentIndex, index, e);
              }).toList(),
              controller: widget.tabController,
            )));
  }

  Widget buildTab(int index, int selectedIndex, BottomMenuModel e) {
    return Tab(
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? appTheme.purple200
                : Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: selectedIndex == index ? Colors.white : Colors.transparent,
              width: 2,
            ),
          ),
          child: SizedBox(
            height: 28.adaptSize,
            width: 28.adaptSize,
            child: selectedIndex == index ? e.activeIcon : e.icon,
          )),
    );
  }
}

enum BottomBarEnum {
  imgIconHome,
  Iconprimary24x24,
  IconAdd,
  Icon3,
  Searchprimary,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  Icon icon;
  Icon activeIcon;
  BottomBarEnum type;
}
