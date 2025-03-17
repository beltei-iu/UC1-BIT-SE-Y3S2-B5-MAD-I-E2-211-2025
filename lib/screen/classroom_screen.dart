import 'package:flutter/material.dart';

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {
  Future<String> loadData() async {
    await Future.delayed(Duration(seconds: 3));
    throw ("This is my error");
    return "Hello World";
  }

  // void handleLoadData() async {
  //   await loadData().then((value) {
  //     print("Data : $value");
  //   }).catchError((error) {
  //     print("Error : $error");
  //   });
  // }

  @override
  void initState() {
    super.initState();
    //handleLoadData();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text("Class"),
      actions: [Icon(Icons.search)],
      elevation: 5,
    );

    final body = FutureBuilder(
        future: loadData(),
        builder: (BuildContext context, AsyncSnapshot<String> asyncSnapshort) {
          // Completed
          if (asyncSnapshort.connectionState == ConnectionState.done) {
            // Has Error
            if (asyncSnapshort.hasError) {
              return Center(
                child: Text("${asyncSnapshort.error}"),
              );
            }

            // No Data
            if (!asyncSnapshort.hasData) {
              return Center(
                child: Text("No Data"),
              );
            }

            final data = asyncSnapshort.data as String;
            return Center(
              child: Text(" Data : $data"),
            );
          }
          // Uncompleted
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });

    final screen = Scaffold(
      appBar: appBar,
      body: body,
    );

    return screen;
  }
}
