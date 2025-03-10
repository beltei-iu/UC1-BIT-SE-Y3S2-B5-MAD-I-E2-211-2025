import 'package:flutter/material.dart';
import 'package:mad/util/app_color.dart';
import 'package:mad/screen/news_list_screen.dart';
import 'package:mad/route/app_route.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<HomeScreen> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
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
      children: [_buildRowMenu, _buildRowMenu, _buildRowMenu],
    );

    final screen = Scaffold(
      appBar: appBar,
      body: body,
    );
    return screen;
  }

  Widget get _buildRowMenu {
    List<String> menuList = ["ព័ត៏មាន", "ព័ត៏មាន", "ព័ត៏មាន", "ព័ត៏មាន"];

    final row = menuList.map((i) => cardMenu(i)).toList();

    return Row(
      children: row,
    );
  }

  Widget cardMenu(String title) {
    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 4,
        height: 100,
        child: Card(
          child: Center(
            child: Text("ព័ត៏មាន"),
          ),
        ),
      ),
      onTap: () {
        // final route = MaterialPageRoute(
        //     builder: (context) => NewsListScreen(title: title));
        // Navigator.push(context, route);

        AppRoute.key.currentState
            ?.pushNamed(AppRoute.newsListScreen, arguments: title);
      },
    );
  }
}
