import 'package:flutter/material.dart';
import 'package:menalup/presentation/screen2/page_tow_container.dart';
import 'package:menalup/presentation/screen1/page_one.dart';
import 'package:menalup/presentation/screen3/page_three.dart';
import 'package:menalup/presentation/screen4/page_four.dart';
import 'package:menalup/presentation/screen5/page_five.dart';
import 'package:menalup/widgets/navgation_screen.dart';

class AppRoutes {
  static const String screen1 = '/PageOne';


  static const String page2 = '/PageTowContainer';

  static const String screen3 = '/PageThree';

  static const String screen4 = '/PageFour';

  static const String screen5 = '/PageFive';

  static const String NavigationBarBottom = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    screen1: (context) => PageOne(),
    page2: (context) => PageTowContainer(),
    screen3: (context) => PageThree(),
    screen4: (context) => PageFour(),
    screen5: (context) => PageFive(),
    NavigationBarBottom: (context) => AppNavigationScreen()
  };
}
