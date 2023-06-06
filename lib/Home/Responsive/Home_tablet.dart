import 'package:flutter/material.dart';

class Home_tablet extends StatefulWidget {
  const Home_tablet({super.key});

  @override
  State<Home_tablet> createState() => _Home_tabletState();
}

class _Home_tabletState extends State<Home_tablet> {
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
