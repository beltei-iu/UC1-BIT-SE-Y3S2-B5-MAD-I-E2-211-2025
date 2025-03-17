import 'package:flutter/material.dart';

class NewsListScreen extends StatefulWidget {
  // String? title;
  // NewsListScreen({super.key, this.title});

  NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)!.settings.arguments as String;

    final appBar = AppBar(
      title: Text("${title}"),
      elevation: 5,
    );

    final screen = Scaffold(
      appBar: appBar,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop("Data from Screen2 to Screen1");
            },
            child: Text("Back")),
      ),
    );

    return screen;
  }
}
