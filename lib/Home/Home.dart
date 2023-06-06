import 'package:responsive_framework/responsive_framework.dart';

import 'package:flutter/material.dart';
import 'package:test_responsive/Home/Responsive/Home_desktop.dart';
import 'package:test_responsive/Home/Responsive/Home_mobile.dart';
import 'package:test_responsive/Home/Responsive/Home_tablet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double _wh = MediaQuery.of(context).size.width / 100;
    double _hg = MediaQuery.of(context).size.height / 100;

    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return const Home_desktop();
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      return const Home_tablet();
    } else if (ResponsiveBreakpoints.of(context).isMobile) {
      return const Home_mobile();
    } else {
      return const Home_desktop();
    }
  }
}
