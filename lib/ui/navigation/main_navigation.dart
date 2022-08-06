import 'package:flutter/material.dart';
import 'package:travel_app/ui/pages/home_page/home_page.dart';
import 'package:travel_app/ui/pages/welcome_page/welcome_page.dart';

class MainNavigationRouteNames {
  static const welcomePage = 'welcome_page';
  static const homePage = '/';
}

class MainNavigation {
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.welcomePage: (context) => const WelcomePage(),
    MainNavigationRouteNames.homePage: (context) => const HomePage(),
  };
}
