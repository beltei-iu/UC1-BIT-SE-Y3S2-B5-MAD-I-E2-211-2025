import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad/util/app_color.dart';
import 'package:mad/screen/news_list_screen.dart';
import 'package:mad/route/app_route.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<HomeScreen> {
  List<dynamic> menuList = [];

  @override
  void initState() {
    loadMenu();
  }

  Future<void> loadMenu() async {
    final menuData = await rootBundle.loadString("assets/data/menu.json");
    List<dynamic> data = jsonDecode(menuData);
    List menu = data.map((e) {
      return e["name"];
    }).toList();
    print(menu);
    setState(() {
      menuList = menu;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _sliderImage = Image.asset("assets/images/beltei_intake2.png");

    final appBar = AppBar(
      title:
          Image.asset('assets/images/BELTEI_international_university_logo.png'),
      elevation: 5,
      centerTitle: true,
      backgroundColor: AppColor.appColor,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Icon(Icons.notifications),
        )
      ],
    );

    final body = ListView(
      children: [_sliderImage, _buildSlogan, _buildRowMenu],
    );

    final screen = Scaffold(
      appBar: appBar,
      body: body,
    );
    return screen;
  }

  Widget get _buildSlogan {
    final slogan = Container(
      color: AppColor.appColor,
      height: 60,
      child: Center(
        child: Text(
          "អនាគតភាពជាអ្នកដឹកនាំពិភពលោក",
          style: TextStyle(color: AppColor.appTextColor),
        ),
      ),
    );

    return slogan;
  }

  Widget get _buildRowMenu {
    final cardItems = menuList.map((e) {
      return cardMenu("$e");
    }).toList();

    final gridMenu = GridView.count(
      crossAxisCount: 4,
      children: cardItems,
    );

    return SizedBox(
      height: 400,
      child: gridMenu,
    );
  }

  Widget cardMenu(String title) {
    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 4,
        height: 100,
        child: Card(
          child: Center(
            child: Text(title),
          ),
        ),
      ),
      onTap: () {
        // final route = MaterialPageRoute(
        //     builder: (context) => NewsListScreen(title: title));
        // Navigator.push(context, route);
        handleDataFromScreen2(title);
      },
    );
  }

  Future<void> handleDataFromScreen2(String title) async {
    final result = await AppRoute.key.currentState
        ?.pushNamed(AppRoute.newsListScreen, arguments: title);
    print("Result from screen 2 : $result");
  }
}
