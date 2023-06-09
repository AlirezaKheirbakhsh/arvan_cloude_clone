// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        color: const Color(0xf5f7fa),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: _wh * 77,
                      // height: _hg * 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(28),
                            bottomRight: Radius.circular(28)),
                        gradient: RadialGradient(
                          center: Alignment(0.8, -1.3),
                          radius: 1,
                          colors: [
                            Color.fromARGB(255, 6, 78, 75),
                            Color.fromARGB(255, 0, 18, 21),
                          ],
                          stops: [
                            0,
                            1,
                          ],
                        ),
                        backgroundBlendMode: BlendMode.srcOver,
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            // color: Color.fromARGB(255, 255, 0, 0),
                            height: _hg * 80,
                            width: _wh * 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 210),
                                  child: SvgPicture.asset(
                                      "assets/images/Banner.svg"),
                                  // color: Colors.black,
                                  width: _wh * 100,
                                  height: _hg * 70,
                                )
                              ],
                            ),
                          ),
                          Container(
                            // color: const Color.fromARGB(255, 255, 217, 0),

                            height: _hg * 10,
                            width: _wh * 80,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 210),

                                        // color: Colors.red,
                                        width: 250,
                                        height: (_hg * 10 < 60) ? _hg * 10 : 60,
                                        child: TextButton(
                                            child: const Text("ورود به انجمن",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20,
                                                    color: Color.fromARGB(
                                                        255, 10, 58, 65))),
                                            style: ButtonStyle(
                                                padding: MaterialStateProperty.all<EdgeInsets>(
                                                    const EdgeInsets.all(0)),
                                                backgroundColor:
                                                    MaterialStateProperty.all<Color>(
                                                        const Color.fromARGB(
                                                            255, 255, 163, 0)),
                                                // foregroundColor:
                                                //     // MaterialStateProperty.all<Color>(
                                                //     //     Colors.red) ,
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                  // side: BorderSide(color: Colors.red)
                                                ))),
                                            onPressed: () => null)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // color: Color.fromARGB(255, 234, 0, 255),
                            height: _hg * 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: _wh * 23,
                      height: _hg * 100,
                      // color: Colors.red,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              //555
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right:
                                ((_wh * 23) - 200) < 0 ? 0 : ((_wh * 23) - 200),
                            top: ((_hg * 50) - 325) < 0
                                ? 0
                                : ((_hg * 50) - 325)),
                        width: 400,
                        height: 650,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(10, 0, 0, 0),
                              blurRadius: 50.0, // soften the shadow
                              spreadRadius: 0.0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 5  horizontally
                                1.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 300,
                                height: 50,
                                // color: Colors.amberAccent,
                                margin:
                                    const EdgeInsets.only(top: 40, bottom: 0),
                                child: Center(
                                    child: const Text(
                                  "ورود",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 186, 186),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w800),
                                )),
                              ),
                              Container(
                                  width: 300,
                                  height: 40,
                                  margin:
                                      const EdgeInsets.only(top: 60, bottom: 0),

                                  // color: const Color.fromARGB(255, 134, 255, 64),
                                  child: const TextField(
                                    //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                                    decoration: InputDecoration(
                                      isCollapsed: true,
                                          isDense: true,
                                          

                                  contentPadding: EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10 ),

                                      filled: true,
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(0, 76, 175, 79),
                                          width: 0.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 186, 186),
                                          width: 1.0,
                                        ),
                                        
                                      ),

                                      hintTextDirection: TextDirection.rtl,
                                      // enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Color.fromARGB(255, 12, 73, 58),strokeAlign: BorderSide.strokeAlignCenter) ),
                                      // border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                      // labelText: 'Enter your username',
                                      hintText: 'نشانی ایمیل',
                                      hintStyle: TextStyle(
                                          decoration: TextDecoration.none,
                                          color:
                                              Color.fromARGB(255, 57, 100, 98)
                                              ),
                                    ),
                                  )),
                              Container(
                                width: 300,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 0),
                                color: const Color.fromARGB(255, 64, 255, 255),
                              ),
                              Container(
                                width: 300,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 0),
                                color: const Color.fromARGB(255, 64, 169, 255),
                              ),
                              Container(
                                width: 300,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 0),
                                color: const Color.fromARGB(255, 64, 83, 255),
                              ),
                              Container(
                                width: 300,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 60, bottom: 0),
                                color: const Color.fromARGB(255, 137, 64, 255),
                              ),
                              Container(
                                width: 300,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 0),
                                color: const Color.fromARGB(255, 255, 64, 239),
                              ),
                              Container(
                                width: 300,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                color: Color.fromARGB(255, 255, 64, 128),
                              ),
                              Container(
                                width: 300,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 0, bottom: 0),
                                color: Color.fromARGB(255, 255, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 24,
                    width: 104,
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: _wh * 2, top: 27),
                    child: TextButton(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(" English",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Color.fromARGB(250, 138, 138, 138))),
                            Icon(
                              Icons.language,
                              size: 18,
                              color: Color.fromARGB(150, 138, 138, 138),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(0)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 233, 237, 245)),
                            // foregroundColor:
                            //     // MaterialStateProperty.all<Color>(
                            //     //     Colors.red) ,
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: BorderSide(color: Colors.red)
                            ))),
                        onPressed: () => null),
                  ),
                ],
              ),
              Container(
                // height: 100,

                // color: Color.fromARGB(255, 255, 0, 191),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: _wh * 2, top: 27),
                      height: 24,
                      width: 104,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        // color: Color.fromARGB(240, 240, 0, 0),
                      ),
                      child: TextButton(
                          child: const Text(" <  بازگشت به سایت",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(235, 255, 255, 255))),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(0)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(96, 255, 255, 255)),
                              // foregroundColor:
                              //     // MaterialStateProperty.all<Color>(
                              //     //     Colors.red) ,
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                // side: BorderSide(color: Colors.red)
                              ))),
                          onPressed: () => null),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
