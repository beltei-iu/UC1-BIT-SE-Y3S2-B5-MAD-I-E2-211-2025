import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState() {
  //   return _State();
  // }
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<LoginScreen> {
  var _username = TextEditingController();
  var _password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logo = Center(
      child: Image.asset("assets/images/beltei.png"),
    );

    final username = TextFormField(
      controller: _username,
      decoration: InputDecoration(
        hint: Text("Username"),
        prefix: Icon(Icons.mail),
        suffix: Icon(Icons.check_circle),
      ),
      keyboardType: TextInputType.emailAddress,
    );

    final password = TextFormField(
      controller: _password,
      decoration: InputDecoration(
          hint: Text("Password"),
          prefix: Icon(Icons.key_off),
          suffix: Icon(Icons.remove_red_eye),
          border: OutlineInputBorder()),
      keyboardType: TextInputType.text,
    );

    final forgetPasswordText = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [Text("ភ្លេចលេខសម្ងាត់")],
    );

    final donotHasAcctText = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("មិនមានគណនីទេ? ចុះឈ្មោះ")],
    );

    final loginButton = Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child:
          ElevatedButton.icon(onPressed: () {}, label: Text("ចូលប្រើប្រាស់")),
    );

    final socialIconRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(Icons.facebook), Icon(Icons.report_gmailerrorred)],
    );

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: logo),
          username,
          password,
          forgetPasswordText,
          SizedBox(
            height: 20,
          ),
          loginButton,
          SizedBox(
            height: 20,
          ),
          donotHasAcctText,
          SizedBox(
            height: 40,
          ),
          socialIconRow
        ],
      ),
    ));
  }
}
