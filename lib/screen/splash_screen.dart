import 'package:flutter/material.dart';
import 'package:mad/screen/login_screen.dart';
import 'package:mad/screen/main_screen.dart';
import 'package:mad/route/app_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final text = Text("Welcome to MAD");
    final logo = Image.asset("assets/images/beltei.png");
    final appSlogan = Text("The Future of Global Leader");

    final colLogo = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [logo, appSlogan],
      ),
    );

    final logoBox = Expanded(flex: 3, child: colLogo);

    final getStart = Expanded(
        flex: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    maximumSize: Size(double.infinity, 50)),
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (content) => MainScreen());
                  Navigator.pushReplacement(context, route);

                  //Navigator.pushReplacementNamed(context, AppRoute.mainScreen);

                  // AppRoute.key.currentState
                  //     ?.pushReplacementNamed(AppRoute.mainScreen);
                },
                child: Text("Get Start")),
          ),
        ));

    // Level Layout/Block
    final col = Column(
      children: [logoBox, getStart],
    );

    // Level Screen - Splash Screen
    final screen = Scaffold(
      body: col,
    );

    return screen;
  }
}
