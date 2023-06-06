import 'package:flutter/material.dart';

class Home_desktop extends StatefulWidget {
  const Home_desktop({super.key});

  @override
  State<Home_desktop> createState() => _Home_desktopState();
}

class _Home_desktopState extends State<Home_desktop> {
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
