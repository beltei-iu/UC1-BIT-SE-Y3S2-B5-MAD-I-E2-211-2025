import 'package:flutter/material.dart';
import 'package:mad/screen/classroom_screen.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/notification_screen.dart';
import 'package:mad/screen/more_screen.dart';
import 'package:mad/util/app_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<Widget> screenList = [
    HomeScreen(),
    ClassroomScreen(),
    NotificationScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final navBar = BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: AppColor.appColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.class_sharp),
            label: 'Class',
            backgroundColor: AppColor.appColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
            backgroundColor: AppColor.appColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
            backgroundColor: AppColor.appColor)
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      backgroundColor: AppColor.appColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );

    return Scaffold(
      body: screenList.elementAt(_currentIndex),
      bottomNavigationBar: navBar,
    );
  }
}
