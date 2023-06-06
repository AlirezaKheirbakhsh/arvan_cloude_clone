import 'package:flutter/material.dart';

class Login_desktop extends StatefulWidget {
  const Login_desktop({super.key});

  @override
  State<Login_desktop> createState() => _Login_desktopState();
}

class _Login_desktopState extends State<Login_desktop> {
  @override
  Widget build(BuildContext context) {
    double _wh = MediaQuery.of(context).size.width / 100;
    double _hg = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: Container(
        width: _wh * 100,
        height: _hg * 100,
        color: Color.fromARGB(255, 25, 38, 181),
      ),
    );
  }
}
