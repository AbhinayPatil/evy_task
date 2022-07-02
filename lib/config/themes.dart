import 'package:flutter/material.dart';

class app_colors{
  static var dark_green =  Color(0xff039812);
static var light_green = Color(0xffD1FAD5);
static var dark_yellow = Color(0xfff58c24);
static var light_yellow= Color(0xffFEF0C7);
static var dark_red = Color(0xff980303);
static var light_red = Color(0xffFAD1D1);

}


ThemeData theme(){
  return ThemeData(
    primaryColor: const Color(0xffFFB2BA),
    backgroundColor: const Color(0xffFCFCFC),
    scaffoldBackgroundColor: const Color(0xffeedce4),


    fontFamily: "DM Sans",
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xff201A1A),
        fontWeight: FontWeight.w600,
        fontSize: 30
      ),

      bodyText1: TextStyle(
        color: Color(0xff201A1A),
        fontWeight: FontWeight.normal,
        fontSize: 24
      ),

      bodyText2: TextStyle(
          color: Color(0xff989595),
          fontWeight: FontWeight.normal,
          fontSize: 16
      ),
    ),
  );
}