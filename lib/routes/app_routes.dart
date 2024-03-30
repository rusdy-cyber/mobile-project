import 'package:flutter/material.dart';
import '../presentation/android_large_one_screen/android_large_one_screen.dart';
import '../presentation/android_large_two_screen/android_large_two_screen.dart';
import '../presentation/android_large_three_screen/android_large_three_screen.dart';
import '../presentation/android_large_five_screen/android_large_five_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        androidLargeOneScreen: AndroidLargeOneScreen.builder,
        androidLargeTwoScreen: AndroidLargeTwoScreen.builder,
        androidLargeThreeScreen: AndroidLargeThreeScreen.builder,
        androidLargeFiveScreen: AndroidLargeFiveScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AndroidLargeOneScreen.builder
      };
}
