import 'package:flutter/material.dart';

class Login_mobile extends StatefulWidget {
  const Login_mobile({super.key});

  @override
  State<Login_mobile> createState() => _Login_mobileState();
}

class _Login_mobileState extends State<Login_mobile> {
  @override
  Widget build(BuildContext context) {
    double _wh = MediaQuery.of(context).size.width / 100;
    double _hg = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: Container(
        width: _wh * 100,
        height: _hg * 100,
        color: Color.fromARGB(255, 0, 248, 8),
      ),
    );
  }
}
