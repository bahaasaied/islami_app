import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0XFFB7935F);
Color cardlightColor= Color(0x80B7935F);
Color carddarkColor= Color(0xff141A2E);
Color blackColor = Color(0XFF242424);
Color primaryDarkColor = Color(0XFF141A2E);
Color yallowColor = Color(0XFFFACC1D);


class MyThemeData {
  static ThemeData lightTheme = ThemeData(

    primaryColor: primaryColor,
cardColor: cardlightColor,
dividerTheme: DividerThemeData(
  color: primaryColor,
),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 30,
        color: blackColor,
      ),
      color: Colors.transparent,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: primaryColor,
    ),
    textTheme: TextTheme(

      bodySmall: GoogleFonts.elMessiri(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      bodyMedium: GoogleFonts.elMessiri(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
      bodyLarge: GoogleFonts.elMessiri(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
    ),
  );



  static ThemeData darkTheme = ThemeData(
    primaryColor: yallowColor,
    cardColor: carddarkColor,
    dividerTheme: DividerThemeData(
      color: yallowColor,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 30,
        color: yallowColor,
      ),
      color: Colors.transparent,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: yallowColor,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: primaryDarkColor,
    ),
    textTheme: TextTheme(

      bodySmall: GoogleFonts.elMessiri(
          color: yallowColor, fontSize: 20, fontWeight: FontWeight.w700),
      bodyMedium: GoogleFonts.elMessiri(
          color: yallowColor, fontSize: 25, fontWeight: FontWeight.w700),
      bodyLarge: GoogleFonts.elMessiri(
          color: yallowColor, fontSize: 30, fontWeight: FontWeight.w700),
    ),
  );
}
