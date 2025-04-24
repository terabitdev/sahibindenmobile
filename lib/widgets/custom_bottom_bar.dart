import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Iconhouseactive,
  Rewindbluegray800,
  Favoritebluegray800,
  Lockbluegray800
}

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconHouseActive,
      activeIcon: ImageConstant.imgIconHouseActive,
      type: BottomBarEnum.Iconhouseactive,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRewindBlueGray800,
      activeIcon: ImageConstant.imgRewindBlueGray800,
      type: BottomBarEnum.Rewindbluegray800,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavoriteBlueGray800,
      activeIcon: ImageConstant.imgFavoriteBlueGray800,
      type: BottomBarEnum.Favoritebluegray800,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockBlueGray800,
      activeIcon: ImageConstant.imgLockBlueGray800,
      type: BottomBarEnum.Lockbluegray800,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 0.9,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withValues(
              alpha: 0.25,
            ),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              2,
            ),
          )
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
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.h,
              width: 26.h,
              color: appTheme.blueGray800,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 34.h,
              width: 26.h,
              color: appTheme.blueGray80003,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
