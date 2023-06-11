import 'package:responsive_framework/responsive_framework.dart';

import 'package:flutter/material.dart';
import 'package:test_responsive/Login/Responsive/Login_desktop.dart';
import 'package:test_responsive/Login/Responsive/Login_mobile.dart';
import 'package:test_responsive/Login/Responsive/Login_tablet.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width / 100;
    double hg = MediaQuery.of(context).size.height / 100;

    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return const Login_desktop();
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      return const Login_tablet();
    } else if (ResponsiveBreakpoints.of(context).isMobile) {
      return const Login_mobile();
    } else {
      return const Login_desktop();
    }
  }
}
