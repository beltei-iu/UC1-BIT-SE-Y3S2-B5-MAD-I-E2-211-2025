import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<HomeScreen> {
  bool? _isBlack;

  @override
  void initState() {
    _isBlack = true;
  }

  @override
  Widget build(BuildContext context) {
    final icon = Icon(Icons.heart_broken);
    final iconRed = Icon(
      Icons.heart_broken,
      color: Colors.red,
    );

    final checkBox = Checkbox(value: false, onChanged: (v) {});

    final screen = Scaffold(
      body: Center(
        child: GestureDetector(
          child: _isBlack! ? icon : iconRed,
          onTap: () {
            setState(() {
              _isBlack = !_isBlack!;
            });
          },
        ),
      ),
    );

    return screen;
  }
}
