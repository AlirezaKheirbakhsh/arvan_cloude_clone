import 'package:flutter/material.dart';

class Home_mobile extends StatefulWidget {
  const Home_mobile({super.key});

  @override
  State<Home_mobile> createState() => _Home_mobileState();
}

class _Home_mobileState extends State<Home_mobile> {
  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width / 100;
    double hg = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: Container(
        width: wh * 100,
        height: hg * 100,
        color: const Color.fromARGB(255, 0, 248, 8),
      ),
    );
  }
}


