import 'package:flutter/material.dart';
import 'package:mad/screen/main_screen.dart';
import 'package:mad/screen/news_list_screen.dart';
import 'package:mad/screen/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/";
  static const String mainScreen = "/mainScreen";
  static const String newsListScreen = "/newsListScreen";

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splashScreen:
        return getRoute(SplashScreen(), setting);
      case mainScreen:
        return getRoute(MainScreen(), setting);
      case newsListScreen:
        return getRoute(NewsListScreen(), setting);
      default:
        throw RouteException("Route is not found");
    }
  }

  static Route<dynamic> getRoute(Widget newRoute, RouteSettings settings) {
    return MaterialPageRoute(
        settings: settings, builder: (context) => newRoute);
  }
}

class RouteException implements Exception {
  String message;

  RouteException(this.message);
}
