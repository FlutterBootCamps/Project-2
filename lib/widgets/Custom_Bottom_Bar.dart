import 'package:flutter/material.dart';
import 'package:menalup/core/app_export.dart';
import 'package:menalup/widgets/image_view.dart';

class CustomBottomBar extends StatefulWidget {
  final Function(BottomBarEnum)? onChanged;

  CustomBottomBar({this.onChanged});

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
      defaultColor: Color.fromRGBO(0, 0, 0, 50), // Default color for Home item
      activeColor: Color.fromRGBO(65, 172, 120, 100), // Active color for Home item
    ),
    BottomMenuModel(
      icon: ImageConstant.imgArrow,
      activeIcon: ImageConstant.imgArrow,
      type: BottomBarEnum.Arrow,
      defaultColor: Color.fromRGBO(0, 0, 0, 50), // Default color for Arrow item
      activeColor: Color.fromRGBO(244, 39, 11, 0.744), // Active color for Arrow item
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPerson,
      activeIcon: ImageConstant.imgPerson,
      type: BottomBarEnum.Person,
      defaultColor: Color.fromRGBO(0, 0, 0, 50), // Default color for Person item
      activeColor: Color.fromRGBO(171, 112, 223, 100), // Active color for Person item
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettings,
      activeIcon: ImageConstant.imgSettings,
      type: BottomBarEnum.Settings,
      defaultColor: Color.fromRGBO(0, 0, 0, 50), // Default color for Settings item
      activeColor: Color.fromRGBO(220, 63, 0, 100), // Active color for Settings item
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: BottomNavigationBar(
        backgroundColor: Color.fromARGB(0, 201, 13, 13),
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
              height: 29.v,
              width: 26.h,
              color: selectedIndex == index
                  ? bottomMenuList[index].activeColor // Use active color when selected
                  : bottomMenuList[index].defaultColor, // Use default color when not selected
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 29.v,
              width: 35.h,
              color: bottomMenuList[index].activeColor, // Always use active color for active icon
            ),
            label: '',
          );
        }),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            widget.onChanged?.call(bottomMenuList[index].type);
          });
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Arrow,
  Person,
  Settings,
}

class BottomMenuModel {
  final String icon;
  final String activeIcon;
  final BottomBarEnum type;
  final Color defaultColor; // Default color attribute
  final Color activeColor; // Active color attribute

  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    required this.defaultColor,
    required this.activeColor,
  });
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(220, 214, 8, 8),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
