import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_magnet/common/presentation/component/colors.dart';

ThemeData setupThemeData() {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    // fontFamily: "Muli",
    // inputDecorationTheme: inputDecorationTheme(),
    // visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

// ** to use it in screen use
// Theme.of(context).textTheme.headline6

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.poppins(
        fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.poppins(fontSize: 46, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.poppins(
        fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.poppins(
        fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.poppins(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.poppins(
        fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.lato(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.lato(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.lato(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.lato(
        fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.lato(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    // systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: IconThemeData(color: kBlackColor),
    // toolbarTextStyle: ,
    // titleTextStyle:
  );
}
