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
        // color: Colors.grey,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: _wh * 77,
                      height: _hg * 100,
                      color: const Color.fromARGB(255, 33, 243, 44),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.cyan,
                            height: _hg * 10,
                          ),
                          Container(
                            color: const Color.fromARGB(255, 49, 106, 114),
                            height: _hg * 70,
                          ),
                          Container(
                            color: Color.fromARGB(255, 255, 217, 0),
                            height: _hg * 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: _wh * 23,
                      height: _hg * 100,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: ((_wh * 23) - 184)),
                      width: 368,
                      height: 600,
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
