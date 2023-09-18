import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_magnet/src/commons/theme/colors.dart';

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
    displayLarge: GoogleFonts.poppins(
        fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    displayMedium: GoogleFonts.poppins(
        fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    displaySmall:
        GoogleFonts.poppins(fontSize: 46, fontWeight: FontWeight.w400),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headlineSmall:
        GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
    titleLarge: GoogleFonts.poppins(
        fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    titleMedium: GoogleFonts.poppins(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    titleSmall: GoogleFonts.poppins(
        fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyLarge: GoogleFonts.lato(
        fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyMedium: GoogleFonts.lato(
        fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    labelLarge: GoogleFonts.lato(
        fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    bodySmall: GoogleFonts.lato(
        fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    labelSmall: GoogleFonts.lato(
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
