// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login_desktop extends StatefulWidget {
  const Login_desktop({super.key});

  @override
  State<Login_desktop> createState() => _Login_desktopState();
}

class _Login_desktopState extends State<Login_desktop> {
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();

  bool isFirst = true;
  bool ho_email = false;
  bool ho_pass = false;
  bool of_email = false;
  bool of_pass = false;
  bool is_pass_hide = true;
  double login_hg = 600;
  double error_hg = 15;
  bool error=false;
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width / 100;
    double hg = MediaQuery.of(context).size.height / 100;

    void _onEmailFocus() {
      setState(() {
        of_email = !of_email;
      });

      print(of_email);
    }

    void _onPassFocus() {
      setState(() {
        of_pass = !of_pass;
      });

      print(of_pass);
    }

    customInit() {
      if (isFirst) {
        emailFocus.addListener(_onEmailFocus);
        passFocus.addListener(_onPassFocus);

        isFirst = false;
      }
    }

    customInit();

    return Scaffold(
      body: Container(
        width: wh * 100,
        height: hg * 100,
        color: const Color(0x00f5f7fa),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: wh * 77,
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
                          SizedBox(
                            // color: Color.fromARGB(255, 255, 0, 0),
                            height: hg * 80,
                            width: wh * 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 210),
                                  // child: SvgPicture.asset(
                                  //     "assets/images/Banner.svg"),
                                  // color: Colors.black,
                                  width: wh * 100,
                                  height: hg * 70,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            // color: const Color.fromARGB(255, 255, 217, 0),

                            height: hg * 10,
                            width: wh * 80,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin:
                                            const EdgeInsets.only(right: 210),

                                        // color: Colors.red,
                                        width: 250,
                                        height: (hg * 10 < 60) ? hg * 10 : 60,
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
                                                backgroundColor: MaterialStateProperty.all<Color>(
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
                                            onPressed: () {})),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // color: Color.fromARGB(255, 234, 0, 255),
                            height: hg * 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: wh * 23,
                      height: hg * 100,
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
                      AnimatedContainer(
                        duration: Duration(milliseconds: 50),
                        margin: EdgeInsets.only(
                            right:
                                ((wh * 23) - 184) < 0 ? 0 : ((wh * 23) - 184),
                            top: ((hg * 50) - login_hg / 2) < 0
                                ? 0
                                : ((hg * 50) - login_hg / 2)),
                        width: 368,
                        height: login_hg,
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
                            ),
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
                                child: const Center(
                                    child: Text(
                                  "ورود",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 186, 186),
                                      fontSize: 35,
                                      fontWeight: FontWeight.w800),
                                )),
                              ),
                              AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  width: 283,
                                  height: 45,
                                  margin:
                                      const EdgeInsets.only(top: 60, bottom: 0),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: of_email
                                              ? const Color.fromARGB(
                                                  150, 4, 189, 158)
                                              : Colors.transparent,
                                          blurRadius: 20.0, // soften the shadow
                                          spreadRadius:
                                              -10.0, //extend the shadow
                                          offset: const Offset(
                                            0.0, // Move to right 5  horizontally
                                            8.0, // Move to bottom 5 Vertically
                                          ),
                                        ),
                                      ]),
                                  // color: const Color.fromARGB(255, 134, 255, 64),
                                  child: MouseRegion(
                                    onHover: (value) {
                                      setState(() {
                                        ho_email = true;
                                      });
                                    },
                                    onExit: (value) {
                                      setState(() {
                                        ho_email = false;
                                      });
                                    },
                                    child: Container(
                                      child: TextField(
                                        //email-textfild
                                        focusNode: emailFocus,

                                        //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                                        decoration: InputDecoration(
                                          fillColor: !of_email
                                              ? const Color.fromARGB(
                                                  255, 245, 247, 250)
                                              : Colors.transparent,
                                          // contentPadding: EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10 ),
                                          // suffixIcon: Icon(Icons.remove_red_eye,color: Color.fromARGB(52, 0, 0, 0),),
                                          filled: true,
                                          // isCollapsed: true,//make fild 0 padding
                                          // isDense: true,
                                          hoverColor: Colors.transparent,
                                          hintTextDirection: TextDirection.rtl,

                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12)),
                                            borderSide: BorderSide(
                                              color: !ho_email
                                                  ? Color.fromARGB(
                                                      0, 76, 175, 79)
                                                  : Color.fromARGB(
                                                      108, 0, 186, 186),
                                              width: 0.0,
                                            ),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color.fromARGB(
                                                  255, 0, 186, 186),
                                              width: 1.0,
                                            ),
                                          ),

                                          // enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Color.fromARGB(255, 12, 73, 58),strokeAlign: BorderSide.strokeAlignCenter) ),
                                          // border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                          // labelText: 'Enter your username',
                                          hintText: 'نشانی ایمیل',
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              fontFamily: "YekanX",
                                              fontWeight: FontWeight.w600,
                                              // decoration: TextDecoration.none,
                                              color: Color.fromARGB(
                                                  130, 57, 100, 98)),
                                        ),
                                      ),
                                    ),
                                  )),
                              AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  width: 280,
                                  height: 45,
                                  margin:
                                      const EdgeInsets.only(top: 20, bottom: 0),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: of_pass
                                              ? const Color.fromARGB(
                                                  150, 4, 189, 158)
                                              : Colors.transparent,
                                          blurRadius: 20.0, // soften the shadow
                                          spreadRadius:
                                              -10.0, //extend the shadow
                                          offset: const Offset(
                                            0.0, // Move to right 5  horizontally
                                            8.0, // Move to bottom 5 Vertically
                                          ),
                                        ),
                                      ]),
                                  // color: const Color.fromARGB(255, 64, 255, 255),
                                  child: MouseRegion(
                                    onHover: (value) {
                                      setState(() {
                                        ho_pass = true;
                                      });
                                    },
                                    onExit: (value) {
                                      setState(() {
                                        ho_pass = false;
                                      });
                                    },
                                    child: Container(
                                      child: TextField(
                                        //textfild-pass
                                        textInputAction: TextInputAction.send,

                                        focusNode: passFocus,

                                        textAlign: TextAlign.start,
                                        obscureText: is_pass_hide,
                                        //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                                        decoration: InputDecoration(
                                          fillColor: !of_pass
                                              ? Color.fromARGB(
                                                  255, 245, 247, 250)
                                              : Colors.transparent,
                                          hoverColor: Colors.transparent,

                                          // contentPadding: EdgeInsets.only(top: 20,bottom: 10,right: 10,left: 10 ),
                                          suffixIcon: InkWell(
                                            onTap: () {
                                              // print("iss password");
                                              setState(() {
                                                is_pass_hide = !is_pass_hide;
                                              });
                                            },
                                            child: Icon(
                                              !is_pass_hide
                                                  ? Icons
                                                      .remove_red_eye_outlined
                                                  : Icons.password,
                                              color: Color.fromARGB(
                                                  130, 57, 100, 98),
                                            ),
                                          ),
                                          filled: true,
                                          // isCollapsed: true,//make fild 0 padding
                                          // isDense: true,
                                          hintTextDirection: TextDirection.rtl,

                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(12)),
                                            borderSide: BorderSide(
                                              color: !ho_pass
                                                  ? const Color.fromARGB(
                                                      0, 76, 175, 79)
                                                  : const Color.fromARGB(
                                                      108, 0, 186, 186),
                                              width: 0.0,
                                            ),
                                          ),

                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color.fromARGB(
                                                  255, 0, 186, 186),
                                              width: 1.0,
                                            ),
                                          ),

                                          hintText: 'رمز',
                                          hintStyle: const TextStyle(
                                              fontFamily: "YekanX",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              decoration: TextDecoration.none,
                                              color: Color.fromARGB(
                                                  130, 57, 100, 98)),
                                        ),
                                      ),
                                    ),
                                  )),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                visible: error,
                                child: AnimatedContainer(

                                  duration: Duration(milliseconds: 50),

                                  margin: EdgeInsets.only(top: 15),
                                  width: 284,
                                  height: error_hg,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromARGB(255, 253, 238, 238),
                                  ),
                                  child: Row(
                                    textDirection:TextDirection.rtl,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        margin: EdgeInsets.only(left: 5),
                                        decoration: const BoxDecoration(
                                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                                        color: Color.fromARGB(31, 255, 95, 95),),
                                        child: const Icon(
                                          Icons.warning_amber_rounded,
                                          color: Color.fromARGB(206, 252, 95, 95),
                                          textDirection: TextDirection.rtl,
                                        ),
                                      ),
                                      const Text(
                                        "  .",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 22,
                                            color: Color.fromARGB(167, 143, 50, 50)),
                                      ),
                                      const Text(
                                        ".اطلاعات وارد شده صحیح نیست",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: Color.fromARGB(190, 194, 67, 67)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  width: 280,
                                  height: 40,
                                  margin:
                                      const EdgeInsets.only(top: 30, bottom: 0),
                                  // color: const Color.fromARGB(255, 64, 169, 255),
                                  child: TextButton(
                                      child: const Text("ورود",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255))),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<EdgeInsets>(
                                              const EdgeInsets.all(0)),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color.fromARGB(
                                                      255, 0, 186, 186)),
                                          // foregroundColor:
                                          //     MaterialStateProperty.all<Color>(
                                          //         Colors.red) ,
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            // side: BorderSide(color: Colors.red)
                                          ))),
                                      onPressed: () {
                                        setState(() {
                                          error=!error;
                                        });
                                        setState(() {
  

  if (error) {
    login_hg = login_hg + 100;
    error_hg = 70;
  }
  else{
    login_hg = login_hg - 100;
    error_hg = 15;
    
    
  }
});
                                      })),
                              Container(
                                width: 280,
                                height: 0,
                                margin:
                                    const EdgeInsets.only(top: 0, bottom: 0),
                                // color: const Color.fromARGB(255, 64, 83, 255),
                              ),
                              Container(
                                width: 280,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 30, bottom: 0),
                                // color: const Color.fromARGB(255, 137, 64, 255),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "ثبت نام",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )),
                                      const Text("حساب کاربری ندارید؟"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 280,
                                // height: 0,
                                margin:
                                    const EdgeInsets.only(top: 0, bottom: 0),
                                // color: const Color.fromARGB(255, 255, 64, 239),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "ایجاد رمز جدید",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )),
                                      const Text("رمز عبورتان را گم کرده اید؟"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 280,
                                height: 40,
                                margin:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                // color: Color.fromARGB(255, 255, 64, 128),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 100,
                                          height: 1,
                                          color: const Color.fromARGB(
                                              255, 209, 219, 232)),
                                      const Text("   یا   "),
                                      Container(
                                          width: 100,
                                          height: 1,
                                          color: const Color.fromARGB(
                                              255, 209, 219, 232)),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                height: 50,

                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 0),
                                // color: Color.fromARGB(255, 255, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        print("Google-tap");
                                      },
                                      onHover: (value) {
                                        print(value);
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 233, 237, 245),
                                        ),
                                        child:
                                            Image.asset('assets/images/G.png'),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        print("Pod Tap");
                                      },
                                      onHover: (value) {
                                        print(value);
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 233, 237, 245),
                                        ),
                                        child: Image.asset(
                                            'assets/images/pod.png'),
                                      ),
                                    )
                                  ],
                                ),
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
                    margin: EdgeInsets.only(right: wh * 2, top: 27),
                    child: TextButton(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(" English",
                                style: TextStyle(
                                    fontFamily: "YekanX",
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
                                const EdgeInsets.all(0)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 233, 237, 245)),
                            // foregroundColor:
                            //     // MaterialStateProperty.all<Color>(
                            //     //     Colors.red) ,
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: BorderSide(color: Colors.red)
                            ))),
                        onPressed: () {}),
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
                      margin: EdgeInsets.only(left: wh * 2, top: 27),
                      height: 24,
                      width: 104,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        // color: Color.fromARGB(240, 240, 0, 0),
                      ),
                      child: TextButton(
                          child: const Text(" <  بازگشت به سایت",
                              style: TextStyle(
                                  fontFamily: "YekanX",
                                  fontSize: 10,
                                  color: Color.fromARGB(202, 255, 255, 255))),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(0)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(31, 255, 255, 255)),
                              // foregroundColor:
                              //     // MaterialStateProperty.all<Color>(
                              //     //     Colors.red) ,
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                // side: BorderSide(color: Colors.red)
                              ))),
                          onPressed: () {}),
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
