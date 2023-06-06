import 'package:flutter/material.dart';

class Login_tablet extends StatefulWidget {
  const Login_tablet({super.key});

  @override
  State<Login_tablet> createState() => LoginetState();
}

class LoginetState extends State<Login_tablet> {
  @override
  Widget build(BuildContext context) {
    double _wh = MediaQuery.of(context).size.width / 100;
    double _hg = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: Container(
        width: _wh * 100,
        height: _hg * 100,
        color: Color.fromARGB(255, 255, 234, 0),
      ),
    );
  }
}
