import 'package:flutter/material.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/splash_screen.dart';

void main() {
  // Level Root
  final root = MaterialApp(
    title: 'MAD211',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: SplashScreen(),
  );

  // function run app
  runApp(root);
}
