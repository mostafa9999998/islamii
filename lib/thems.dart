import 'package:flutter/material.dart';

class Mytheme{
static Color primary =Color(0xffB7935F);
static Color darkprimary =Color(0xff141A2E);
static Color blackcolor =Color(0xff242424);
static Color whitecolor =Color(0xffF8F8F8);
static Color yellowcolor =Color(0xffFACC1D);
 static ThemeData lightmode =ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor:Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      )
    ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        titleMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 25,
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 22,
        ),

          bodyLarge:TextStyle(
            color: Color(0xff242424),
            fontWeight: FontWeight.w400,
            fontSize: 25,
          )
      ),

     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:blackcolor ,
      unselectedItemColor: whitecolor,
    ),
 );
static ThemeData darkmode =ThemeData(
  primaryColor: darkprimary,
  scaffoldBackgroundColor:Colors.transparent,
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white ,
      )
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 25,
    ),
    titleSmall: TextStyle(
      color: Color(0xffFACC1D),
      fontWeight: FontWeight.w400,
      fontSize: 22,
    ),
  bodyLarge:TextStyle(
    color: Color(0xffF8F8F8),
    fontWeight: FontWeight.w400,
    fontSize: 25,
  ) ,

  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor:yellowcolor ,
    unselectedItemColor: whitecolor,
  ),


);
}