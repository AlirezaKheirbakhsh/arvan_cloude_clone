// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_responsive/widgets/ArvanTextField.dart';

class Login_desktop extends StatefulWidget {
  const Login_desktop({super.key});

  @override
  State<Login_desktop> createState() => _Login_desktopState();
}

class _Login_desktopState extends State<Login_desktop> {
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  FocusNode reg_passFocus = FocusNode();

  FocusNode _forgetpasstextFocusNoode = FocusNode();
  FocusNode _fullnametextFocusNoode = FocusNode();
  FocusNode _lastnametextFocusNoode = FocusNode();
  FocusNode _emailtextFocusNoode = FocusNode();

  TextEditingController login_email = TextEditingController();
  TextEditingController login_pass = TextEditingController();
  TextEditingController forgatpass_email = TextEditingController();
  TextEditingController regester_email = TextEditingController();
  TextEditingController regester_name = TextEditingController();
  TextEditingController regester_lastnaem = TextEditingController();
  TextEditingController regester_pass = TextEditingController();

  List<TextEditingController> Email_Verify_Code = [
    TextEditingController(text: ""),
    TextEditingController(text: ""),
    TextEditingController(text: ""),
    TextEditingController(text: ""),
    TextEditingController(text: ""),
    TextEditingController(text: ""),
  ];

  List<bool> Verify_focus = [true, false, false, false, false, false];

  List<FocusNode> Verify_Node = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  ArvanTextField _Forgetpass = ArvanTextField();
  bool _Forgetpasshoverborder = false;
  bool OnHoverForgetPassTextShadow = false;

  ArvanTextField _name = ArvanTextField();
  bool _fullnamehoverborder = false;
  bool OnHoverFullnameTextShadow = false;

  ArvanTextField _lastname = ArvanTextField();
  bool _lastnamehoverborder = false;
  bool OnHoverlastnameTextShadow = false;

  ArvanTextField _Email = ArvanTextField();
  bool _emailhoverborder = false;
  bool OnHoveremailTextShadow = false;

  bool isFirst = true;
  bool ho_email = false;
  bool ho_pass = false;
  bool of_email = false;
  bool of_pass = false;
  bool of_reg_pass = false;
  bool ho_reg_pass = false;

  bool is_pass_hide = true;
  double login_hg = 600;
  double error_hg = 15;
  bool login_error = false;
  bool forgetpass_error = false;
  int map = 2;
  double opp = 1;
  bool wrong_error = false;
  bool wrong_reg_name = false;
  bool wrong_reg_lastname = false;
  bool wrong_reg_emaile = false;
  bool worng_reg_pass = false;
  bool wrong_reg_pass = false;

  bool email_code_error = false;

  bool isPass_8character = false;
  bool isPass_SmallANDBig = false;
  bool isPass_HaveNumbers = false;
  bool isPass_HaveSymblCharacter = false;

  bool send_email = false;

  @override
  void initState() {
    super.initState();

    Email_Verify_Code[0].addListener(() {
      print(Email_Verify_Code[0].text);
      for (var i = 0; i < 6; i++) {
        setState(() {
          Verify_focus[i] = false;
        });
      }
      setState(() {
        Verify_focus[0] = true;
        Verify_Node[0].nextFocus();
      });
    });

    Email_Verify_Code[1].addListener(() {
      print(Email_Verify_Code[1].text);
      for (var i = 0; i < 6; i++) {
        setState(() {
          Verify_focus[i] = false;
        });
      }
      setState(() {
        Verify_focus[2] = true;
        Verify_Node[2].requestFocus();
      });
    });

    Email_Verify_Code[2].addListener(() {
      print(Email_Verify_Code[2].text);
      for (var i = 0; i < 6; i++) {
        setState(() {
          Verify_focus[i] = false;
        });
      }
      setState(() {
        Verify_focus[3] = true;
        Verify_Node[3].requestFocus();
      });
    });

    Email_Verify_Code[3].addListener(() {
      print(Email_Verify_Code[3].text);
      for (var i = 0; i < 6; i++) {
        setState(() {
          Verify_focus[i] = false;
        });
      }
      setState(() {
        Verify_focus[4] = true;
        Verify_Node[4].requestFocus();
      });
    });

    Email_Verify_Code[4].addListener(() {
      print(Email_Verify_Code[4].text);
      for (var i = 0; i < 6; i++) {
        setState(() {
          Verify_focus[i] = false;
        });
      }
      setState(() {
        Verify_focus[5] = true;
        Verify_Node[5].requestFocus();
      });
    });

    Email_Verify_Code[5].addListener(() {


      print(Email_Verify_Code[5].text);
      for (var i = 0; i < 6; i++) {
        setState(() {
          Verify_focus[i] = false;
          Verify_Node[0].requestFocus();
        });
      }



    });
  }

  @override
  Widget build(BuildContext context) {
    double wh = MediaQuery.of(context).size.width / 100;
    double hg = MediaQuery.of(context).size.height / 100;

    void _onTextFocus() {
      setState(() {
        OnHoverForgetPassTextShadow = !OnHoverForgetPassTextShadow;
      });

      print(OnHoverForgetPassTextShadow);
    }

    void _nameTextFocus() {
      setState(() {
        OnHoverlastnameTextShadow = !OnHoverlastnameTextShadow;
      });

      print(OnHoverFullnameTextShadow);
    }

    void _emailTextFocus() {
      setState(() {
        OnHoveremailTextShadow = !OnHoveremailTextShadow;
      });

      print(OnHoveremailTextShadow);
    }

    void _OnTextFocus() {
      setState(() {
        OnHoverFullnameTextShadow = !OnHoverFullnameTextShadow;
      });

      print(OnHoverFullnameTextShadow);
    }

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

    void _reg_onPassFocus() {
      setState(() {
        of_reg_pass = !of_reg_pass;
      });

      print(of_reg_pass);
    }

    customInit() {
      if (isFirst) {
        emailFocus.addListener(_onEmailFocus);
        passFocus.addListener(_onPassFocus);
        reg_passFocus.addListener(_reg_onPassFocus);

        _forgetpasstextFocusNoode.addListener(_onTextFocus);
        _fullnametextFocusNoode.addListener(_OnTextFocus);
        _lastnametextFocusNoode.addListener(_nameTextFocus);
        _emailtextFocusNoode.addListener(_emailTextFocus);

        isFirst = false;
      }
    }

    customInit();

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 100),
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
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Visibility(
                                    maintainAnimation: true,
                                    maintainState: true,
                                    visible: map == 3 ? true : false,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 25),
                                          child: const Text(
                                            "ثبت نام",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 186, 186),
                                                fontSize: 35,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            ":اطلاعات حساب کاربری تان را بنویسید",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 100, 100, 100),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Visibility(
                                          //bikodi
                                          visible: true,

                                          child: Container(
                                            margin: EdgeInsets.only(top: 15),
                                            width: 283,
                                            height: 45,
                                            // color: Colors.black,
                                            child: _name.ADTextfield(
                                              TextFildController: regester_name,
                                              onHover: (a) {
                                                setState(() {
                                                  _fullnamehoverborder = true;
                                                });
                                              },
                                              onExit: (a) {
                                                _fullnamehoverborder = false;
                                              },
                                              hintText: "نام",
                                              TextFocusNoode:
                                                  _fullnametextFocusNoode,
                                              borderside: wrong_reg_name
                                                  ? (OnHoverFullnameTextShadow
                                                      ? Color.fromARGB(
                                                          255, 243, 46, 46)
                                                      : Color.fromARGB(
                                                          0, 90, 0, 0))
                                                  : (!OnHoverFullnameTextShadow
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          255, 0, 186, 186)),
                                              boxShadowColor: wrong_reg_name
                                                  ? (OnHoverFullnameTextShadow
                                                      ? Color.fromARGB(
                                                          255, 231, 6, 6)
                                                      : Color.fromARGB(
                                                          0, 90, 0, 0))
                                                  : (!OnHoverFullnameTextShadow
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          150, 4, 189, 158)),
                                              BorderColor: wrong_reg_name
                                                  ? (_fullnamehoverborder
                                                      ? Color.fromARGB(
                                                          255, 255, 0, 0)
                                                      : Color.fromARGB(
                                                          149, 186, 0, 0))
                                                  : (!_fullnamehoverborder
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          108, 0, 186, 186)),
                                              fillColor:
                                                  !OnHoverFullnameTextShadow
                                                      ? Color.fromARGB(
                                                          255, 245, 245, 245)
                                                      : const Color.fromARGB(
                                                          255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          //bikodi
                                          visible: true,

                                          child: Container(
                                            margin: EdgeInsets.only(top: 15),
                                            width: 283,
                                            height: 45,
                                            // color: Colors.black,
                                            child: _lastname.ADTextfield(
                                              TextFildController:
                                                  regester_lastnaem,
                                              onHover: (a) {
                                                setState(() {
                                                  _lastnamehoverborder = true;
                                                });
                                              },
                                              onExit: (a) {
                                                _lastnamehoverborder = false;
                                              },
                                              hintText: "نام خانوادگی",
                                              TextFocusNoode:
                                                  _lastnametextFocusNoode,
                                              borderside: wrong_reg_lastname
                                                  ? (OnHoverlastnameTextShadow
                                                      ? Color.fromARGB(
                                                          255, 243, 46, 46)
                                                      : Color.fromARGB(
                                                          0, 90, 0, 0))
                                                  : (!OnHoverlastnameTextShadow
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          255, 0, 186, 186)),
                                              boxShadowColor: wrong_reg_lastname
                                                  ? (OnHoverlastnameTextShadow
                                                      ? Color.fromARGB(
                                                          255, 231, 6, 6)
                                                      : Color.fromARGB(
                                                          0, 90, 0, 0))
                                                  : (!OnHoverlastnameTextShadow
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          150, 4, 189, 158)),
                                              BorderColor: wrong_reg_lastname
                                                  ? (_lastnamehoverborder
                                                      ? Color.fromARGB(
                                                          255, 255, 0, 0)
                                                      : Color.fromARGB(
                                                          149, 186, 0, 0))
                                                  : (!_lastnamehoverborder
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          108, 0, 186, 186)),
                                              fillColor:
                                                  !OnHoverlastnameTextShadow
                                                      ? Color.fromARGB(
                                                          255, 245, 245, 245)
                                                      : const Color.fromARGB(
                                                          255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          //bikodi
                                          visible: true,

                                          child: Container(
                                            margin: EdgeInsets.only(top: 15),
                                            width: 283,
                                            height: 45,
                                            // color: Colors.black,
                                            child: _lastname.ADTextfield(
                                              TextFildController:
                                                  regester_email,
                                              onHover: (a) {
                                                setState(() {
                                                  _emailhoverborder = true;
                                                });
                                              },
                                              onExit: (a) {
                                                _emailhoverborder = false;
                                              },
                                              hintText: "نشانی ایمیل",
                                              TextFocusNoode:
                                                  _emailtextFocusNoode,
                                              borderside: wrong_reg_emaile
                                                  ? (OnHoveremailTextShadow
                                                      ? Color.fromARGB(
                                                          255, 243, 46, 46)
                                                      : Color.fromARGB(
                                                          0, 90, 0, 0))
                                                  : (!OnHoveremailTextShadow
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          255, 0, 186, 186)),
                                              boxShadowColor: wrong_reg_emaile
                                                  ? (OnHoveremailTextShadow
                                                      ? Color.fromARGB(
                                                          255, 231, 6, 6)
                                                      : Color.fromARGB(
                                                          0, 90, 0, 0))
                                                  : (!OnHoveremailTextShadow
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          150, 4, 189, 158)),
                                              BorderColor: wrong_reg_emaile
                                                  ? (_emailhoverborder
                                                      ? Color.fromARGB(
                                                          255, 255, 0, 0)
                                                      : Color.fromARGB(
                                                          149, 186, 0, 0))
                                                  : (!_emailhoverborder
                                                      ? Colors.transparent
                                                      : const Color.fromARGB(
                                                          108, 0, 186, 186)),
                                              fillColor: !OnHoveremailTextShadow
                                                  ? Color.fromARGB(
                                                      255, 245, 245, 245)
                                                  : const Color.fromARGB(
                                                      255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                        AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 300),
                                            width: 280,
                                            height: 45,
                                            margin: const EdgeInsets.only(
                                                top: 20, bottom: 0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: wrong_reg_pass
                                                        ? (of_reg_pass
                                                            ? Color.fromARGB(
                                                                255, 231, 6, 6)
                                                            : Color.fromARGB(
                                                                0, 90, 0, 0))
                                                        : (!of_reg_pass
                                                            ? Colors.transparent
                                                            : const Color
                                                                    .fromARGB(
                                                                150,
                                                                4,
                                                                189,
                                                                158)),
                                                    blurRadius:
                                                        20.0, // soften the shadow
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
                                                  ho_reg_pass = true;
                                                });
                                              },
                                              onExit: (value) {
                                                setState(() {
                                                  ho_reg_pass = false;
                                                });
                                              },
                                              child: Container(
                                                child: TextField(
                                                  controller: regester_pass,
                                                  //textfild-pass
                                                  textInputAction:
                                                      TextInputAction.send,

                                                  focusNode: reg_passFocus,

                                                  textAlign: TextAlign.start,
                                                  obscureText: is_pass_hide,
                                                  //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                                                  decoration: InputDecoration(
                                                    fillColor: !of_reg_pass
                                                        ? Color.fromARGB(
                                                            255, 245, 247, 250)
                                                        : Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,

                                                    // contentPadding: EdgeInsets.only(top: 20,bottom: 10,right: 10,left: 10 ),
                                                    suffixIcon: InkWell(
                                                      onTap: () {
                                                        // print("iss password");
                                                        setState(() {
                                                          is_pass_hide =
                                                              !is_pass_hide;
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
                                                    hintTextDirection:
                                                        TextDirection.rtl,

                                                    floatingLabelBehavior:
                                                        FloatingLabelBehavior
                                                            .never,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  12)),
                                                      borderSide: BorderSide(
                                                        color: wrong_reg_pass
                                                            ? (ho_reg_pass
                                                                ? Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        0,
                                                                        0)
                                                                : Color
                                                                    .fromARGB(
                                                                        149,
                                                                        186,
                                                                        0,
                                                                        0))
                                                            : (!ho_reg_pass
                                                                ? Colors
                                                                    .transparent
                                                                : const Color
                                                                        .fromARGB(
                                                                    108,
                                                                    0,
                                                                    186,
                                                                    186)),
                                                        width: 0.0,
                                                      ),
                                                    ),

                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  12)),
                                                      borderSide: BorderSide(
                                                        style:
                                                            BorderStyle.solid,
                                                        color: wrong_reg_pass
                                                            ? (of_reg_pass
                                                                ? Color
                                                                    .fromARGB(
                                                                        255,
                                                                        243,
                                                                        46,
                                                                        46)
                                                                : Color
                                                                    .fromARGB(
                                                                        0,
                                                                        90,
                                                                        0,
                                                                        0))
                                                            : (!of_reg_pass
                                                                ? Colors
                                                                    .transparent
                                                                : const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    0,
                                                                    186,
                                                                    186)),
                                                        width: 1.0,
                                                      ),
                                                    ),

                                                    hintText: 'رمز',
                                                    hintStyle: const TextStyle(
                                                        fontFamily: "YekanX",
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        decoration:
                                                            TextDecoration.none,
                                                        color: Color.fromARGB(
                                                            130, 57, 100, 98)),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                width: 268,
                                                height: 20,
                                                // color: Colors.black,
                                                child: Row(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text(
                                                      "رمز عبور میبایست",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            width: 8,
                                                            height: 3,
                                                            color: isPass_8character
                                                                ? Color
                                                                    .fromARGB(
                                                                        255,
                                                                        16,
                                                                        184,
                                                                        156)
                                                                : const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    151,
                                                                    151,
                                                                    151),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 2),
                                                            width: 8,
                                                            height: 3,
                                                            color: isPass_SmallANDBig
                                                                ? const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    16,
                                                                    184,
                                                                    156)
                                                                : const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    151,
                                                                    151,
                                                                    151),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 2),
                                                            width: 8,
                                                            height: 3,
                                                            color: isPass_HaveNumbers
                                                                ? const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    16,
                                                                    184,
                                                                    156)
                                                                : const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    151,
                                                                    151,
                                                                    151),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 2),
                                                            width: 8,
                                                            height: 3,
                                                            color: isPass_HaveSymblCharacter
                                                                ? const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    16,
                                                                    184,
                                                                    156)
                                                                : const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    151,
                                                                    151,
                                                                    151),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 15),
                                                width: 268,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      children: [
                                                        Visibility(
                                                          visible:
                                                              isPass_8character,
                                                          child: Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 5),
                                                              child: const Icon(
                                                                Icons.check,
                                                                size: 17,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        10,
                                                                        150,
                                                                        126),
                                                              )),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: 2,
                                                          ),
                                                          child: Text(
                                                            "حداقل ۸ کاراکتر باشد",
                                                            style: TextStyle(
                                                                color: isPass_8character
                                                                    ? Color
                                                                        .fromARGB(
                                                                            255,
                                                                            10,
                                                                            150,
                                                                            126)
                                                                    : const Color
                                                                            .fromARGB(
                                                                        209,
                                                                        0,
                                                                        0,
                                                                        0)),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      children: [
                                                        Visibility(
                                                          visible:
                                                              isPass_SmallANDBig,
                                                          child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 5),
                                                              child: Icon(
                                                                Icons.check,
                                                                size: 17,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        10,
                                                                        150,
                                                                        126),
                                                              )),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 2,
                                                          ),
                                                          child: Text(
                                                            "ترکیبی از حروف کوچک و بزرگ باشد",
                                                            style: TextStyle(
                                                                color: isPass_SmallANDBig
                                                                    ? Color
                                                                        .fromARGB(
                                                                            255,
                                                                            10,
                                                                            150,
                                                                            126)
                                                                    : const Color
                                                                            .fromARGB(
                                                                        209,
                                                                        0,
                                                                        0,
                                                                        0)),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      children: [
                                                        Visibility(
                                                          visible:
                                                              isPass_HaveNumbers,
                                                          child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 5),
                                                              child: Icon(
                                                                Icons.check,
                                                                size: 17,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        10,
                                                                        150,
                                                                        126),
                                                              )),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 2,
                                                          ),
                                                          child: Text(
                                                            "شامل اعداد باشد",
                                                            style: TextStyle(
                                                                color: isPass_HaveNumbers
                                                                    ? Color
                                                                        .fromARGB(
                                                                            255,
                                                                            10,
                                                                            150,
                                                                            126)
                                                                    : const Color
                                                                            .fromARGB(
                                                                        209,
                                                                        0,
                                                                        0,
                                                                        0)),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      children: [
                                                        Visibility(
                                                          visible:
                                                              isPass_HaveSymblCharacter,
                                                          child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 5),
                                                              child: Icon(
                                                                Icons.check,
                                                                size: 17,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        10,
                                                                        150,
                                                                        126),
                                                              )),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 2,
                                                          ),
                                                          child: Text(
                                                            "شامل کاراکترهای خاص (نمادها) باشد",
                                                            style: TextStyle(
                                                                color: isPass_HaveSymblCharacter
                                                                    ? Color
                                                                        .fromARGB(
                                                                            255,
                                                                            10,
                                                                            150,
                                                                            126)
                                                                    : const Color
                                                                            .fromARGB(
                                                                        209,
                                                                        0,
                                                                        0,
                                                                        0)),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          width: 283,
                                          height: 40,
                                          child: TextButton(
                                              child: const Text("ارسال ایمیل",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                                      RoundedRectangleBorder>(RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    // side: BorderSide(color: Colors.red)
                                                  ))),
                                              onPressed: () {
                                                setState(() {
                                                  send_email = !send_email;
                                                });
                                                setState(() {
                                                  if (send_email) {
                                                    isPass_8character = true;
                                                    isPass_HaveNumbers = true;
                                                    isPass_HaveSymblCharacter =
                                                        true;
                                                    isPass_SmallANDBig = true;
                                                    wrong_reg_name = true;
                                                    wrong_reg_lastname = true;
                                                    wrong_reg_emaile = true;
                                                    wrong_reg_pass = true;
                                                    // wrong_reg_pass=true
                                                    // login_hg =460 ;
                                                    // error_hg = 70;
                                                  } else {
                                                    isPass_8character = false;
                                                    isPass_HaveNumbers = false;
                                                    isPass_HaveSymblCharacter =
                                                        false;
                                                    isPass_SmallANDBig = false;
                                                    wrong_reg_name = false;
                                                    wrong_reg_lastname = false;
                                                    wrong_reg_emaile = false;
                                                    wrong_reg_pass = false;

                                                    // login_hg =400 ;
                                                    // error_hg = 15;
                                                  }
                                                });
                                              }),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      login_hg = 600;
                                                      opp = 0;
                                                      map = 0;
                                                      login_error = false;
                                                      wrong_error = false;
                                                      wrong_error = false;
                                                      isPass_8character = false;
                                                      isPass_HaveNumbers =
                                                          false;
                                                      isPass_HaveSymblCharacter =
                                                          false;
                                                      isPass_SmallANDBig =
                                                          false;
                                                    });
                                                  },
                                                  child: const Text(
                                                    "می‌خو‌اهم وارد شوم",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  )),
                                              const Text(".نام کاربری دارم"),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 280,
                                          height: 40,
                                          margin: const EdgeInsets.only(
                                              top: 0, bottom: 0),
                                          // color: Color.fromARGB(255, 255, 64, 128),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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

                                          margin: const EdgeInsets.only(
                                              top: 10, bottom: 0),
                                          // color: Color.fromARGB(255, 255, 0, 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  print("Google-tap");
                                                },
                                                onHover: (value) {
                                                  // print(value);
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 233, 237, 245),
                                                  ),
                                                  child: Image.asset(
                                                      'assets/images/G.png'),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  print("Pod Tap");
                                                },
                                                onHover: (value) {
                                                  // print(value);
                                                },
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10),
                                                  padding:
                                                      const EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                                    )),
                                Visibility(
                                  //forgetpass
                                  maintainAnimation: true,
                                  maintainState: true,
                                  visible: map == 1 ? true : false,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 40),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "ایجاد رمز جدید",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 186, 186),
                                                fontSize: 35,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          const Text(
                                            "برای ایجاد رمز جدید لطفا ایمیل مرتبط با",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 56, 56, 56),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Text(
                                            ".کاربری خود را وارد کنید",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 56, 56, 56),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 30),
                                            width: 283,
                                            height: 45,
                                            // color: Colors.black,
                                            child: _Forgetpass.ADTextfield(
                                                TextFildController:
                                                    forgatpass_email,
                                                onHover: (a) {
                                                  setState(() {
                                                    _Forgetpasshoverborder =
                                                        true;
                                                  });
                                                },
                                                onExit: (a) {
                                                  _Forgetpasshoverborder =
                                                      false;
                                                },
                                                hintText: "نشانی ایمیل",
                                                TextFocusNoode:
                                                    _forgetpasstextFocusNoode,
                                                borderside: wrong_error
                                                    ? (OnHoverForgetPassTextShadow
                                                        ? Color.fromARGB(
                                                            255, 243, 46, 46)
                                                        : Color.fromARGB(
                                                            0, 90, 0, 0))
                                                    : (!OnHoverForgetPassTextShadow
                                                        ? Colors.transparent
                                                        : const Color.fromARGB(
                                                            255, 76, 175, 137)),
                                                boxShadowColor: wrong_error
                                                    ? (OnHoverForgetPassTextShadow
                                                        ? Color.fromARGB(
                                                            255, 231, 6, 6)
                                                        : Color.fromARGB(
                                                            0, 90, 0, 0))
                                                    : (!OnHoverForgetPassTextShadow
                                                        ? Colors.transparent
                                                        : const Color.fromARGB(
                                                            255, 76, 175, 137)),
                                                BorderColor: wrong_error
                                                    ? (_Forgetpasshoverborder
                                                        ? Color.fromARGB(
                                                            255, 255, 0, 0)
                                                        : Color.fromARGB(149, 186, 0, 0))
                                                    : (!_Forgetpasshoverborder ? Colors.transparent : const Color.fromARGB(150, 0, 186, 186)),
                                                fillColor: !OnHoverForgetPassTextShadow ? Color.fromARGB(255, 245, 245, 245) : const Color.fromARGB(255, 255, 255, 255)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 35),
                                            width: 283,
                                            height: 40,
                                            child: TextButton(
                                                child: const Text("تایید",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18,
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255))),
                                                style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty.all<EdgeInsets>(
                                                            const EdgeInsets.all(
                                                                0)),
                                                    backgroundColor:
                                                        MaterialStateProperty.all<Color>(
                                                            const Color.fromARGB(
                                                                255, 0, 186, 186)),
                                                    // foregroundColor:
                                                    //     MaterialStateProperty.all<Color>(
                                                    //         Colors.red) ,
                                                    shape:
                                                        MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      // side: BorderSide(color: Colors.red)
                                                    ))),
                                                onPressed: () {
                                                  setState(() {
                                                    forgetpass_error =
                                                        !forgetpass_error;
                                                  });
                                                  setState(() {
                                                    if (forgetpass_error) {
                                                      wrong_error = true;
                                                      login_hg = 550;
                                                      error_hg = 70;
                                                      map = 2;
                                                    } else {
                                                      wrong_error = false;
                                                      login_hg = 400;
                                                      error_hg = 15;
                                                    }
                                                  });
                                                }),
                                          ),
                                          Visibility(
                                            maintainAnimation: true,
                                            maintainState: true,
                                            visible: forgetpass_error,
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 50),
                                              margin: EdgeInsets.only(top: 15),
                                              width: 284,
                                              height: 60,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Color.fromARGB(
                                                    255, 253, 238, 238),
                                              ),
                                              child: Row(
                                                textDirection:
                                                    TextDirection.rtl,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 40,
                                                    height: 40,
                                                    margin: EdgeInsets.only(
                                                        left: 5),
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20)),
                                                      color: Color.fromARGB(
                                                          31, 255, 95, 95),
                                                    ),
                                                    child: const Icon(
                                                      Icons
                                                          .warning_amber_rounded,
                                                      color: Color.fromARGB(
                                                          206, 252, 95, 95),
                                                      textDirection:
                                                          TextDirection.rtl,
                                                    ),
                                                  ),
                                                  const Text(
                                                    "  .",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 22,
                                                        color: Color.fromARGB(
                                                            167, 143, 50, 50)),
                                                  ),
                                                  const Text(
                                                    ".اطلاعات وارد شده صحیح نیست",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            190, 194, 67, 67)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 30),
                                            width: 70,
                                            height: 30,
                                            child: TextButton(
                                                child: const Text("بازگشت >",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13,
                                                        color: Color.fromARGB(
                                                            255, 124, 124, 124))),
                                                style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty.all<EdgeInsets>(
                                                            const EdgeInsets.all(
                                                                0)),
                                                    backgroundColor:
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromARGB(40,
                                                                175, 175, 175)),
                                                    // foregroundColor:
                                                    //     MaterialStateProperty.all<Color>(
                                                    //         Colors.red) ,
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      // side: BorderSide(color: Colors.red)
                                                    ))),
                                                onPressed: () {
                                                  setState(() {
                                                    login_hg = 600;
                                                    map = 0;
                                                    opp = 1;
                                                    forgetpass_error = false;
                                                    wrong_error = false;
                                                    // if (error) {
                                                    //   login_hg = login_hg  -200;

                                                    // } else {
                                                    //   login_hg = login_hg + 200;
                                                    //   error_hg = 15;
                                                    // }
                                                  });
                                                }),
                                          ),
                                        ],
                                      )),
                                ),
                                Visibility(
                                  //forgetpass-2
                                  maintainAnimation: true,
                                  maintainState: true,
                                  visible: map == 2 ? true : false,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 40),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "تایید ایمیل",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 186, 186),
                                                fontSize: 35,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top:40),
                                            child: const Text(
                                              ":کد تایید ارسال شده بعه ایمیل خود را در کادر زیر وارد کنید",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 56, 56, 56),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 100),
                                            width: 330,
                                            height: 60,
                                            // color: Colors.black,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  // margin: EdgeInsets.only(left: 0,right: 0),
                                                  width: 46,
                                                  // color: const Color.fromARGB(255, 250, 0, 0),
                                                  child:
                                                      _Forgetpass.ADTextfield(
                                                          autofocus: true,
                                                          TextFocusNoode:
                                                              Verify_Node[0],
                                                          isCollapsed: true,
                                                          Continer_Padding:
                                                              const EdgeInsets.only(
                                                                  left: 3,
                                                                  top: 17,
                                                                  right: 0,
                                                                  bottom: 13),
                                                          InTextStyle:
                                                              TextStyle(
                                                            fontSize: 22,
                                                          ),
                                                          IntextAlign:
                                                              TextAlign.center,
                                                          MaxLenth: 1,
                                                          TextFildController:
                                                              Email_Verify_Code[
                                                                  0],
                                                          onHover: (a) {
                                                            setState(() {
                                                              _Forgetpasshoverborder =
                                                                  true;
                                                            });
                                                          },
                                                          onExit: (a) {
                                                            _Forgetpasshoverborder =
                                                                false;
                                                          },
                                                          borderside:
                                                              Color.fromARGB(
                                                                  255,
                                                                  35,
                                                                  207,
                                                                  179),
                                                          boxShadowColor:
                                                              Color.fromARGB(
                                                                  0, 76, 175, 137),
                                                          BorderColor:
                                                              Color.fromARGB(0,
                                                                  76, 175, 137),
                                                          fillColor:
                                                              const Color.fromARGB(
                                                                  255,
                                                                  246,
                                                                  246,
                                                                  246)),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 0, right: 0),
                                                  width: 46,
                                                  // color: const Color.fromARGB(255, 250, 0, 0),
                                                  child:
                                                      _Forgetpass.ADTextfield(
                                                          autofocus: true,
                                                          TextFocusNoode:
                                                              Verify_Node[1],
                                                          isCollapsed: true,
                                                          Continer_Padding:
                                                              const EdgeInsets.only(
                                                                  left: 3,
                                                                  top: 17,
                                                                  right: 0,
                                                                  bottom: 13),
                                                          InTextStyle:
                                                              TextStyle(
                                                            fontSize: 22,
                                                          ),
                                                          IntextAlign:
                                                              TextAlign.center,
                                                          MaxLenth: 1,
                                                          TextFildController:
                                                              Email_Verify_Code[
                                                                  1],
                                                          onHover: (a) {
                                                            setState(() {
                                                              _Forgetpasshoverborder =
                                                                  true;
                                                            });
                                                          },
                                                          onExit: (a) {
                                                            _Forgetpasshoverborder =
                                                                false;
                                                          },
                                                          borderside:
                                                              Color.fromARGB(
                                                                  255,
                                                                  35,
                                                                  207,
                                                                  179),
                                                          boxShadowColor:
                                                              Color.fromARGB(
                                                                  0, 76, 175, 137),
                                                          BorderColor:
                                                              Color.fromARGB(0,
                                                                  76, 175, 137),
                                                          fillColor:
                                                              const Color.fromARGB(
                                                                  255,
                                                                  246,
                                                                  246,
                                                                  246)),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 0, right: 0),
                                                  width: 46,
                                                  // color: const Color.fromARGB(255, 250, 0, 0),
                                                  child:
                                                      _Forgetpass.ADTextfield(
                                                          autofocus: true,
                                                          TextFocusNoode:
                                                              Verify_Node[2],
                                                          isCollapsed: true,
                                                          Continer_Padding:
                                                              const EdgeInsets.only(
                                                                  left: 3,
                                                                  top: 17,
                                                                  right: 0,
                                                                  bottom: 13),
                                                          InTextStyle:
                                                              TextStyle(
                                                            fontSize: 22,
                                                          ),
                                                          IntextAlign:
                                                              TextAlign.center,
                                                          MaxLenth: 1,
                                                          TextFildController:
                                                              Email_Verify_Code[
                                                                  2],
                                                          onHover: (a) {
                                                            setState(() {
                                                              _Forgetpasshoverborder =
                                                                  true;
                                                            });
                                                          },
                                                          onExit: (a) {
                                                            _Forgetpasshoverborder =
                                                                false;
                                                          },
                                                          borderside:
                                                              Color.fromARGB(
                                                                  255,
                                                                  35,
                                                                  207,
                                                                  179),
                                                          boxShadowColor:
                                                              Color.fromARGB(
                                                                  0, 76, 175, 137),
                                                          BorderColor:
                                                              Color.fromARGB(0,
                                                                  76, 175, 137),
                                                          fillColor:
                                                              const Color.fromARGB(
                                                                  255,
                                                                  246,
                                                                  246,
                                                                  246)),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 0, right: 0),
                                                  width: 46,
                                                  // color: const Color.fromARGB(255, 250, 0, 0),
                                                  child:
                                                      _Forgetpass.ADTextfield(
                                                          autofocus: true,
                                                          TextFocusNoode:
                                                              Verify_Node[3],
                                                          isCollapsed: true,
                                                          Continer_Padding:
                                                              const EdgeInsets.only(
                                                                  left: 3,
                                                                  top: 17,
                                                                  right: 0,
                                                                  bottom: 13),
                                                          InTextStyle:
                                                              TextStyle(
                                                            fontSize: 22,
                                                          ),
                                                          IntextAlign:
                                                              TextAlign.center,
                                                          MaxLenth: 1,
                                                          TextFildController:
                                                              Email_Verify_Code[
                                                                  3],
                                                          onHover: (a) {
                                                            setState(() {
                                                              _Forgetpasshoverborder =
                                                                  true;
                                                            });
                                                          },
                                                          onExit: (a) {
                                                            _Forgetpasshoverborder =
                                                                false;
                                                          },
                                                          borderside:
                                                              Color.fromARGB(
                                                                  255,
                                                                  35,
                                                                  207,
                                                                  179),
                                                          boxShadowColor:
                                                              Color.fromARGB(
                                                                  0, 76, 175, 137),
                                                          BorderColor:
                                                              Color.fromARGB(0,
                                                                  76, 175, 137),
                                                          fillColor:
                                                              const Color.fromARGB(
                                                                  255,
                                                                  246,
                                                                  246,
                                                                  246)),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 0, right: 0),
                                                  width: 46,
                                                  // color: const Color.fromARGB(255, 250, 0, 0),
                                                  child:
                                                      _Forgetpass.ADTextfield(
                                                          autofocus: true,
                                                          TextFocusNoode:
                                                              Verify_Node[4],
                                                          isCollapsed: true,
                                                          Continer_Padding:
                                                              const EdgeInsets.only(
                                                                  left: 3,
                                                                  top: 17,
                                                                  right: 0,
                                                                  bottom: 13),
                                                          InTextStyle:
                                                              TextStyle(
                                                            fontSize: 22,
                                                          ),
                                                          IntextAlign:
                                                              TextAlign.center,
                                                          MaxLenth: 1,
                                                          TextFildController:
                                                              Email_Verify_Code[
                                                                  4],
                                                          onHover: (a) {
                                                            setState(() {
                                                              _Forgetpasshoverborder =
                                                                  true;
                                                            });
                                                          },
                                                          onExit: (a) {
                                                            _Forgetpasshoverborder =
                                                                false;
                                                          },
                                                          borderside:
                                                              Color.fromARGB(
                                                                  255,
                                                                  35,
                                                                  207,
                                                                  179),
                                                          boxShadowColor:
                                                              Color.fromARGB(
                                                                  0, 76, 175, 137),
                                                          BorderColor:
                                                              Color.fromARGB(0,
                                                                  76, 175, 137),
                                                          fillColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  246,
                                                                  246,
                                                                  246)),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 0, right: 0),
                                                  width: 46,
                                                  // color: const Color.fromARGB(255, 250, 0, 0),
                                                  child:
                                                      _Forgetpass.ADTextfield(
                                                          autofocus: true,
                                                          TextFocusNoode:
                                                              Verify_Node[5],
                                                          isCollapsed: true,
                                                          Continer_Padding:
                                                              const EdgeInsets.only(
                                                                  left: 3,
                                                                  top: 17,
                                                                  right: 0,
                                                                  bottom: 13),
                                                          InTextStyle:
                                                              TextStyle(
                                                            fontSize: 22,
                                                          ),
                                                          IntextAlign:
                                                              TextAlign.center,
                                                          MaxLenth: 1,
                                                          TextFildController:
                                                              Email_Verify_Code[
                                                                  5],
                                                          onHover: (a) {
                                                            setState(() {
                                                              _Forgetpasshoverborder =
                                                                  true;
                                                            });
                                                          },
                                                          onExit: (a) {
                                                            _Forgetpasshoverborder =
                                                                false;
                                                          },
                                                          borderside:
                                                              Color.fromARGB(
                                                                  255,
                                                                  35,
                                                                  207,
                                                                  179),
                                                          boxShadowColor:
                                                              Color.fromARGB(
                                                                  0, 76, 175, 137),
                                                          BorderColor:
                                                              Color.fromARGB(0,
                                                                  76, 175, 137),
                                                          fillColor:
                                                              const Color.fromARGB(
                                                                  255,
                                                                  246,
                                                                  246,
                                                                  246)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 20),
                                            width: 40,
                                            height: 20,
                                            // color: Colors.black,
                                            child: const Text(
                                              "0:00",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 20),
                                            width: 100,
                                            height: 30,
                                            child: TextButton(
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  children: [
                                                    Icon(
                                                      Icons.refresh,
                                                      color: Colors.blueGrey,
                                                    ),
                                                    Text("ارسال دوباره",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    124,
                                                                    124,
                                                                    124))),
                                                  ],
                                                ),
                                                style: ButtonStyle(
                                                    padding: MaterialStateProperty
                                                        .all<EdgeInsets>(
                                                            const EdgeInsets.all(
                                                                0)),
                                                    backgroundColor:
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromARGB(
                                                                0, 175, 175, 175)),
                                                    // foregroundColor:
                                                    //     MaterialStateProperty.all<Color>(
                                                    //         Colors.red) ,
                                                    shape: MaterialStateProperty
                                                        .all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      // side: BorderSide(color: Colors.red)
                                                    ))),
                                                onPressed: () {
                                                  setState(() {
                                                    email_code_error =
                                                        !email_code_error;
                                                    // if (error) {
                                                    //   login_hg = login_hg  -200;

                                                    // } else {
                                                    //   login_hg = login_hg + 200;
                                                    //   error_hg = 15;
                                                    // }
                                                  });
                                                }),
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Visibility(
                                            maintainAnimation: true,
                                            maintainState: true,
                                            visible: email_code_error,
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 50),
                                              margin: EdgeInsets.only(top: 15),
                                              width: 284,
                                              height: 60,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Color.fromARGB(
                                                    255, 253, 238, 238),
                                              ),
                                              child: Row(
                                                textDirection:
                                                    TextDirection.rtl,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 40,
                                                    height: 40,
                                                    margin: EdgeInsets.only(
                                                        left: 5, right: 10),
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20)),
                                                      color: Color.fromARGB(
                                                          31, 255, 95, 95),
                                                    ),
                                                    child: const Icon(
                                                      Icons
                                                          .warning_amber_rounded,
                                                      color: Color.fromARGB(
                                                          206, 252, 95, 95),
                                                      textDirection:
                                                          TextDirection.rtl,
                                                    ),
                                                  ),
                                                  const Text(
                                                    "  .",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 22,
                                                        color: Color.fromARGB(
                                                            167, 143, 50, 50)),
                                                  ),
                                                  const Text(
                                                    ".کد تایید معتبر نیست",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 15,
                                                        color: Color.fromARGB(
                                                            190, 194, 67, 67)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 30),
                                            width: 70,
                                            height: 30,
                                            child: TextButton(
                                                child: const Text("بازگشت >",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13,
                                                        color: Color.fromARGB(
                                                            255, 124, 124, 124))),
                                                style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty.all<EdgeInsets>(
                                                            const EdgeInsets.all(
                                                                0)),
                                                    backgroundColor:
                                                        MaterialStateProperty.all<Color>(
                                                            Color.fromARGB(40,
                                                                175, 175, 175)),
                                                    // foregroundColor:
                                                    //     MaterialStateProperty.all<Color>(
                                                    //         Colors.red) ,
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      // side: BorderSide(color: Colors.red)
                                                    ))),
                                                onPressed: () {
                                                  setState(() {
                                                    login_hg = 400;

                                                    map = 1;
                                                    opp = 1;
                                                    forgetpass_error = false;
                                                    wrong_error = false;
                                                    // if (error) {
                                                    //   login_hg = login_hg  -200;

                                                    // } else {
                                                    //   login_hg = login_hg + 200;
                                                    //   error_hg = 15;
                                                    // }
                                                  });
                                                }),
                                          ),
                                        ],
                                      )),
                                ),
                                Visibility(
                                  maintainAnimation: true,
                                  maintainState: true,
                                  visible: map == 0 ? true : false,
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 300,
                                          height: 50,
                                          // color: Colors.amberAccent,
                                          margin: const EdgeInsets.only(
                                              top: 40, bottom: 0),
                                          child: const Center(
                                              child: Text(
                                            "ورود",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 186, 186),
                                                fontSize: 35,
                                                fontWeight: FontWeight.w800),
                                          )),
                                        ),
                                        Container(
                                          width: 283,
                                          height: 45,
                                          margin: const EdgeInsets.only(
                                              top: 60, bottom: 0),
                                          child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(12)),
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: of_email
                                                          ? const Color
                                                                  .fromARGB(
                                                              150, 4, 189, 158)
                                                          : Colors.transparent,
                                                      blurRadius:
                                                          20.0, // soften the shadow
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
                                                    controller: login_email,
                                                    //email-textfild
                                                    focusNode: emailFocus,

                                                    //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                                                    decoration: InputDecoration(
                                                      fillColor: !of_email
                                                          ? const Color
                                                                  .fromARGB(255,
                                                              245, 247, 250)
                                                          : Colors.transparent,
                                                      // contentPadding: EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10 ),
                                                      // suffixIcon: Icon(Icons.remove_red_eye,color: Color.fromARGB(52, 0, 0, 0),),
                                                      filled: true,
                                                      // isCollapsed: true,//make fild 0 padding
                                                      // isDense: true,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      hintTextDirection:
                                                          TextDirection.rtl,

                                                      floatingLabelBehavior:
                                                          FloatingLabelBehavior
                                                              .never,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    12)),
                                                        borderSide: BorderSide(
                                                          color: !ho_email
                                                              ? Color.fromARGB(
                                                                  0,
                                                                  76,
                                                                  175,
                                                                  79)
                                                              : Color.fromARGB(
                                                                  108,
                                                                  0,
                                                                  186,
                                                                  186),
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    12)),
                                                        borderSide: BorderSide(
                                                          style:
                                                              BorderStyle.solid,
                                                          color: Color.fromARGB(
                                                              255, 0, 186, 186),
                                                          width: 1.0,
                                                        ),
                                                      ),

                                                      // enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Color.fromARGB(255, 12, 73, 58),strokeAlign: BorderSide.strokeAlignCenter) ),
                                                      // border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                                      // labelText: 'Enter your username',
                                                      hintText: 'نشانی ایمیل',
                                                      hintStyle:
                                                          const TextStyle(
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  "YekanX",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              // decoration: TextDecoration.none,
                                                              color: Color
                                                                  .fromARGB(
                                                                      130,
                                                                      57,
                                                                      100,
                                                                      98)),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ),
                                        AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 300),
                                            width: 280,
                                            height: 45,
                                            margin: const EdgeInsets.only(
                                                top: 20, bottom: 0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: of_pass
                                                        ? const Color.fromARGB(
                                                            150, 4, 189, 158)
                                                        : Colors.transparent,
                                                    blurRadius:
                                                        20.0, // soften the shadow
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
                                                  controller: login_pass,
                                                  //textfild-pass
                                                  textInputAction:
                                                      TextInputAction.send,

                                                  focusNode: passFocus,

                                                  textAlign: TextAlign.start,
                                                  obscureText: is_pass_hide,
                                                  //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                                                  decoration: InputDecoration(
                                                    fillColor: !of_pass
                                                        ? Color.fromARGB(
                                                            255, 245, 247, 250)
                                                        : Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,

                                                    // contentPadding: EdgeInsets.only(top: 20,bottom: 10,right: 10,left: 10 ),
                                                    suffixIcon: InkWell(
                                                      onTap: () {
                                                        // print("iss password");
                                                        setState(() {
                                                          is_pass_hide =
                                                              !is_pass_hide;
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
                                                    hintTextDirection:
                                                        TextDirection.rtl,

                                                    floatingLabelBehavior:
                                                        FloatingLabelBehavior
                                                            .never,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  12)),
                                                      borderSide: BorderSide(
                                                        color: !ho_pass
                                                            ? const Color
                                                                    .fromARGB(
                                                                0, 76, 175, 79)
                                                            : const Color
                                                                    .fromARGB(
                                                                108,
                                                                0,
                                                                186,
                                                                186),
                                                        width: 0.0,
                                                      ),
                                                    ),

                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  12)),
                                                      borderSide: BorderSide(
                                                        style:
                                                            BorderStyle.solid,
                                                        color: Color.fromARGB(
                                                            255, 0, 186, 186),
                                                        width: 1.0,
                                                      ),
                                                    ),

                                                    hintText: 'رمز',
                                                    hintStyle: const TextStyle(
                                                        fontFamily: "YekanX",
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        decoration:
                                                            TextDecoration.none,
                                                        color: Color.fromARGB(
                                                            130, 57, 100, 98)),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        Visibility(
                                          maintainAnimation: true,
                                          maintainState: true,
                                          visible: login_error,
                                          child: AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 50),
                                            margin: EdgeInsets.only(top: 15),
                                            width: 284,
                                            height: error_hg,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Color.fromARGB(
                                                  255, 253, 238, 238),
                                            ),
                                            child: Row(
                                              textDirection: TextDirection.rtl,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  margin:
                                                      EdgeInsets.only(left: 5),
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    color: Color.fromARGB(
                                                        31, 255, 95, 95),
                                                  ),
                                                  child: const Icon(
                                                    Icons.warning_amber_rounded,
                                                    color: Color.fromARGB(
                                                        206, 252, 95, 95),
                                                    textDirection:
                                                        TextDirection.rtl,
                                                  ),
                                                ),
                                                const Text(
                                                  "  .",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 22,
                                                      color: Color.fromARGB(
                                                          167, 143, 50, 50)),
                                                ),
                                                const Text(
                                                  ".اطلاعات وارد شده صحیح نیست",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 15,
                                                      color: Color.fromARGB(
                                                          190, 194, 67, 67)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                            width: 280,
                                            height: 40,
                                            margin: const EdgeInsets.only(
                                                top: 30, bottom: 0),
                                            // color: const Color.fromARGB(255, 64, 169, 255),
                                            child: TextButton(
                                                child: const Text("ورود",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18,
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255))),
                                                style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty.all<EdgeInsets>(
                                                            const EdgeInsets.all(
                                                                0)),
                                                    backgroundColor:
                                                        MaterialStateProperty.all<Color>(
                                                            const Color.fromARGB(
                                                                255, 0, 186, 186)),
                                                    // foregroundColor:
                                                    //     MaterialStateProperty.all<Color>(
                                                    //         Colors.red) ,
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      // side: BorderSide(color: Colors.red)
                                                    ))),
                                                onPressed: () {
                                                  setState(() {
                                                    login_error = !login_error;
                                                  });
                                                  setState(() {
                                                    if (login_error) {
                                                      login_hg = login_hg + 100;
                                                      error_hg = 70;
                                                    } else {
                                                      login_hg = login_hg - 100;
                                                      error_hg = 15;
                                                    }
                                                  });
                                                })),
                                        Container(
                                          width: 280,
                                          height: 0,
                                          margin: const EdgeInsets.only(
                                              top: 0, bottom: 0),
                                          // color: const Color.fromARGB(255, 64, 83, 255),
                                        ),
                                        Container(
                                          width: 280,
                                          height: 40,
                                          margin: const EdgeInsets.only(
                                              top: 30, bottom: 0),
                                          // color: const Color.fromARGB(255, 137, 64, 255),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        login_hg = 710;
                                                        opp = 0;
                                                        map = 3;
                                                        login_error = false;
                                                      });
                                                    },
                                                    child: const Text(
                                                      "ثبت نام",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )),
                                                const Text(
                                                    "حساب کاربری ندارید؟"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 280,
                                          // height: 0,
                                          margin: const EdgeInsets.only(
                                              top: 0, bottom: 0),
                                          // color: const Color.fromARGB(255, 255, 64, 239),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        login_hg = 400;
                                                        opp = 0;
                                                        map = 1;
                                                        login_error = false;
                                                      });
                                                    },
                                                    child: const Text(
                                                      "ایجاد رمز جدید",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )),
                                                const Text(
                                                    "رمز عبورتان را گم کرده اید؟"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 280,
                                          height: 40,
                                          margin: const EdgeInsets.only(
                                              top: 20, bottom: 20),
                                          // color: Color.fromARGB(255, 255, 64, 128),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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

                                          margin: const EdgeInsets.only(
                                              top: 10, bottom: 0),
                                          // color: Color.fromARGB(255, 255, 0, 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  print("Google-tap");
                                                },
                                                onHover: (value) {
                                                  // print(value);
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 233, 237, 245),
                                                  ),
                                                  child: Image.asset(
                                                      'assets/images/G.png'),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  print("Pod Tap");
                                                },
                                                onHover: (value) {
                                                  // print(value);
                                                },
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10),
                                                  padding:
                                                      const EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                            ),
                          ),
                        ),
                      ],
                    ),
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
