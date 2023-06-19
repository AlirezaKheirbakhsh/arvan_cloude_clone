
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ArvanTextField {


 static const  TextStyle Default=  TextStyle(
                                                fontSize: 14,
                                                fontFamily: "YekanX",
                                                fontWeight: FontWeight.w600,
                                                // decoration: TextDecoration.none,
                                                color: Color.fromARGB(
                                                    130, 57, 100, 98));

ArvanTextField()
{
 


}

Widget ADTextfield (

  { 
    
    Color borderside=Colors.black,
    Color OnHoverBorderColor=Colors.red,
    TextStyle HintTextStyle=Default,
    String hintText="",
    Color fillColor=Colors.grey,
    Color boxShadowColor=Colors.grey,
    Color OnClickFillColor=Colors.white,
    Color BorderColor=const Color.fromARGB(255, 255, 0, 0),
    Function(PointerHoverEvent a)? onHover,
    Function(PointerExitEvent a)? onExit,
    FocusNode? TextFocusNoode ,
    TextEditingController?  TextFildController,
    TextStyle? InTextStyle,
    TextAlign IntextAlign=TextAlign.start,
    int? MaxLenth,
    EdgeInsetsGeometry? Continer_Padding,
    bool isCollapsed=false,
    bool autofocus=false,
  }
    ){

  return AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                   
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(12)),
                                        // colsor: const Color.fromARGB(255, 255, 0, 0),
                                        boxShadow: [
                                          BoxShadow(
                                            color:boxShadowColor,
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
                                      onHover: onHover ??= (value){},
                                          
                                      onExit: onExit ??= (value){} ,
                                      child: Container(
                                       
                                        child: TextField(textAlign: IntextAlign,
                                        maxLength: MaxLenth,
                                        autofocus: autofocus,
                                        style:InTextStyle,
                                          controller: TextFildController,
                                          //email-textfild
                                          focusNode: TextFocusNoode,

                                          //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25
                                          decoration: InputDecoration(
                                            fillColor:fillColor,
                                            counterText: "",    
                                            contentPadding: Continer_Padding,
                                            // suffixIcon: Icon(Icons.remove_red_eye,color: Color.fromARGB(52, 0, 0, 0),),
                                            filled: true,
                                            isCollapsed: isCollapsed,//make fild 0 padding
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
                                                color:BorderColor ,
                                                width: 0.0,
                                              ),
                                            ),
                                            focusedBorder:
                                                 OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              borderSide: BorderSide(
                                                style: BorderStyle.solid,
                                                color: borderside,
                                                width: 1.0,
                                              ),
                                            ),
                              
                                            // enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Color.fromARGB(255, 12, 73, 58),strokeAlign: BorderSide.strokeAlignCenter) ),
                                            // border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                            // labelText: '',
                                            hintText: hintText,
                                            hintStyle:  HintTextStyle
                                            
                                          ),
                                        ),
                                      ),
                                    ));
}


  
}