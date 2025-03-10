import 'package:flutter/material.dart';
import 'package:mad/route/app_route.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/main_screen.dart';
import 'package:mad/screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Level Root
  final root = MaterialApp(
    title: 'MAD211',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    // Option 1
    // home: SplashScreen(),

    // Option 2
    initialRoute: AppRoute.splashScreen,
    onGenerateRoute: AppRoute.generateRoute,
    navigatorKey: AppRoute.key,

    // Option 3
    // routes: {
    //   '/': (context) => SplashScreen(),
    //   '/mainScreen': (context) => MainScreen(),
    // },
  );

  // function run app
  runApp(root);
}
