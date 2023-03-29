import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Colors.grey;
const accentColor = Color(0xFFFFFFFF);
const primarySwatch = Colors.grey;
const fontFamily = 'TickingTimebombBB';

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamily,
      ),
      labelLarge: TextStyle(
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        fontFamily: fontFamily,
      ),
      titleLarge: TextStyle(
        fontFamily: fontFamily,
      ),
      headlineSmall: TextStyle(
        fontFamily: fontFamily,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontFamily,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamily,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamily,
      ),
      displayLarge: TextStyle(
        fontFamily: fontFamily,
      ),
      labelSmall: TextStyle(
        fontFamily: fontFamily,
      ),
      titleSmall: TextStyle(
        fontFamily: fontFamily,
      ),
      titleMedium: TextStyle(
        fontFamily: fontFamily,
      ),
    ),
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
  );
}

BoxDecoration buildBoxDecorationScoreBoard() {
  return const BoxDecoration(
    color: Colors.black,
    border: Border(
      top: BorderSide(color: Colors.grey, width: 3.0),
      left: BorderSide(color: Colors.grey, width: 3.0),
      bottom: BorderSide(color: Colors.white, width: 3.0),
      right: BorderSide(color: Colors.white, width: 3.0),
    ),
  );
}

BoxDecoration buildBoxDecorationClicked() {
  return const BoxDecoration(
    color: Color.fromARGB(255, 245, 237, 237),
    border: Border(
      // top: BorderSide(color: Colors.black, width: 0.5),
      // left: BorderSide(color: Colors.black, width: 0.5),
      bottom: BorderSide(color: Colors.black, width: 0.5),
      right: BorderSide(color: Colors.black, width: 0.5),
    ),
  );
}

BoxDecoration buildBoxDecorationIn() {
  return const BoxDecoration(
    color: Color(0xffbcbcbc),
    border: Border(
      top: BorderSide(color: Colors.grey, width: 3.0),
      left: BorderSide(color: Colors.grey, width: 3.0),
      bottom: BorderSide(color: Colors.white, width: 3.0),
      right: BorderSide(color: Colors.white, width: 3.0),
    ),
  );
}

BoxDecoration buildBoxDecorationOut() {
  return const BoxDecoration(
    color: Color(0x00eeeeee),
    border: Border(
      top: BorderSide(color: Colors.white, width: 3.0),
      left: BorderSide(color: Colors.white, width: 3.0),
      bottom: BorderSide(color: Colors.grey, width: 3.0),
      right: BorderSide(color: Colors.grey, width: 3.0),
    ),
  );
}

BoxDecoration buildBoxDecorationButton() {
  return const BoxDecoration(
    color: Color(0xffbcbcbc),
    border: Border(
      top: BorderSide(color: Colors.white, width: 3.0),
      left: BorderSide(color: Colors.white, width: 3.0),
      bottom: BorderSide(color: Colors.grey, width: 3.0),
      right: BorderSide(color: Colors.grey, width: 3.0),
    ),
  );
}
