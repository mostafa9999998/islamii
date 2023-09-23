import 'package:flutter/material.dart';

class Mytheme{
static Color primary =Color(0xffB7935F);
static Color blackcolor =Color(0xff242424);
static Color whitecolor =Color(0xffF8F8F8);
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

  ),

     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:blackcolor ,
      unselectedItemColor: whitecolor,
    ),

  );
}