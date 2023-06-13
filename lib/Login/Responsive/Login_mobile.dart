import 'package:flutter/material.dart';

class Login_mobile extends StatefulWidget {
  const Login_mobile({super.key});

  @override
  State<Login_mobile> createState() => _Login_mobileState();
}

class _Login_mobileState extends State<Login_mobile> {
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();

  bool isFirst = true;
  bool ho_email = false;
  bool ho_pass = false;
  bool of_email = false;
  bool of_pass = false;
  bool is_pass_hide = true;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double _wh = MediaQuery.of(context).size.width / 100;
    double _hg = MediaQuery.of(context).size.height / 100;
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
        width: _wh * 100,
        color: const Color.fromARGB(255, 245, 247, 250),
        child: Stack(
          children: [
            Center(
              child:     Container(
                      padding: EdgeInsets.only (top: 25),
                      width: _wh*100,
                      height: _hg*600,
                      decoration: const BoxDecoration(
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
                              // width: 300,
                              // height: 50,
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
                                margin: const EdgeInsets.only(
                                    top: 60, bottom: 0),
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
                                        enabledBorder:  OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color:
                                               !ho_email ?Color.fromARGB(0, 76, 175, 79):Color.fromARGB(108, 0, 186, 186),
                                            width: 0.0,
                                          ),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
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
                                            ? Color.fromARGB(255, 245, 247, 250)
                                            : Colors.transparent,
                                        hoverColor: Colors.transparent,
                                  
                                        // contentPadding: EdgeInsets.only(top: 20,bottom: 10,right: 10,left: 10 ),
                                        suffixIcon:  InkWell(
                                          onTap: () {
                                            // print("iss password");
                                            setState(() {
                                              is_pass_hide=!is_pass_hide;
                                            });

                                          },
                                          child:  Icon(
                                           !is_pass_hide? Icons.remove_red_eye_outlined:Icons.password,
                                            color: Color.fromARGB(130, 57, 100, 98),
                                          ),
                                        ),
                                        filled: true,
                                        // isCollapsed: true,//make fild 0 padding
                                        // isDense: true,
                                        hintTextDirection: TextDirection.rtl,
                                  
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never,
                                        enabledBorder:  OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            color: !ho_pass ?const Color.fromARGB(0, 76, 175, 79):const Color.fromARGB(108, 0, 186, 186),
                                  
                                            width: 0.0,
                                          ),
                                        ),
                                  
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                          borderSide: BorderSide(
                                            style: BorderStyle.solid,
                                            color:
                                                Color.fromARGB(255, 0, 186, 186),
                                            width: 1.0,
                                          ),
                                        ),
                                  
                                        hintText: 'رمز',
                                        hintStyle: const TextStyle(
                                            fontFamily: "YekanX",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            decoration: TextDecoration.none,
                                            color:
                                                Color.fromARGB(130, 57, 100, 98)),
                                      ),
                                    ),
                                  ),
                                )),






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
                                    onPressed: () {})),
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
                  ),
            Container(
              width: _wh*100,
              height: _hg*10,
              // color: const Color.fromARGB(255, 255, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: _wh * 3, top: 0),
                      height: 24,
                      width: 104,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        // color: Color.fromARGB(240, 240, 0, 0),
                      ),
                      child: TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(0)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 0, 186, 186)),
                              // foregroundColor:
                              //     // MaterialStateProperty.all<Color>(
                              //     //     Colors.red) ,
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                // side: BorderSide(color: Colors.red)
                              ))),
                          onPressed: () {},
                          child: const Text(" <  بازگشت به سایت",
                              style: TextStyle(
                                fontFamily: "YekanX",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(202, 255, 255, 255)))),
                    ),
                  Container(
                    height: 24,
                    width: 104,
                    // color: Colors.amber,
                    margin: EdgeInsets.only(right: _wh * 3, top: 0),
                    child: TextButton(
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
                        onPressed: () {},
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
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      
      
      
        
      ),
    );
  }
}
