// ignore_for_file: sort_child_properties_last

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
                          center: Alignment(0.9, -0.9),
                          radius: 1.6,
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
                          ),
                          Container(
                            // color: const Color.fromARGB(255, 255, 217, 0),
                            height: _hg * 10,
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
                      child: Column(
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
                            right: ((_wh * 23) - 200),
                            top: ((_hg * 50) - 325) < 0
                                ? 0
                                : ((_hg * 50) - 325)),
                        width: 400,
                        height: 650,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: const Color.fromARGB(255, 255, 255, 255),
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
                                    fontSize: 10,
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
                                  margin:
                                      EdgeInsets.only(left: _wh * 2, top: 27),
                                  height: 24,
                                  width: 104,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    // color: Color.fromARGB(240, 240, 0, 0),
                                  ),
                                  child: TextButton(
                                      child: const Text(" <  بازگشت به سایت",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color.fromARGB(
                                                  185, 255, 255, 255))),
                                      style: ButtonStyle(
                                          padding:
                                              MaterialStateProperty.all<EdgeInsets>(
                                                  const EdgeInsets.all(0)),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color.fromARGB(
                                                      31, 255, 255, 255)),
                                          // foregroundColor:
                                          //     // MaterialStateProperty.all<Color>(
                                          //     //     Colors.red) ,
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
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
