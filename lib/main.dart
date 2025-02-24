import 'package:flutter/material.dart';

void main() {
  // Level Control
  //final text = Text("Welcome to MAD");
  final logo = Image.asset("assets/images/beltei.png");
  final appSlogan = Text("The Future of Global Leader");

  final colLogo = Column(
    children: [logo, appSlogan],
  );

  final logoBox = Expanded(child: logo);

  final getStart = ElevatedButton(
      onPressed: () {
        print("Click...");
      },
      child: Text("Get Start"));

  // Level Layout/Block
  final col = Column(
    children: [logoBox, getStart],
  );

  // Level Screen - Splash Screen
  final screen = Scaffold(
    body: col,
  );

  // Level Root
  final root = MaterialApp(
    title: 'MAD211',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: screen,
  );

  // function run app
  runApp(root);
}
