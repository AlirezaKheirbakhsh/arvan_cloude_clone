import 'package:flutter/material.dart';
import 'package:test_responsive/Home/Home.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:test_responsive/Login/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Test',
      theme: ThemeData(),
      // home: const home(),
      initialRoute: '/Login',
      
      routes: {
        "/Home": (context) => const Home(),
        "/Login": (context) => const Login(),
      },

      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 820, name: TABLET),
          const Breakpoint(start: 821, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
