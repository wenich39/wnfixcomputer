import 'package:flutter/material.dart';

class MyConstant {
//field
  static Color primary = Color.fromARGB(255, 230, 167, 73);
  static Color dart = Color.fromARGB(255, 18, 17, 19);
  static Color light = Color.fromARGB(255, 133, 131, 130);
  static Color active = Color.fromARGB(255, 167, 48, 117);
  static Color button = Color.fromARGB(255, 245, 243, 241);

//method

  BoxDecoration basicBox() {
    return BoxDecoration(
        color: Color.fromARGB(31, 10, 160, 68).withOpacity(0.5));
  }

  BoxDecoration gradientBox() {
    return BoxDecoration(
        gradient: RadialGradient(
            center: Alignment(-0.3, -0.3),
            radius: 1.0,
            colors: [Colors.white, Color.fromARGB(255, 46, 22, 22)]));
  }

  BoxDecoration imageBox() {
    return BoxDecoration();
  }

  TextStyle h1Style() {
    return TextStyle(
      fontSize: 36,
      color: dart,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style() {
    return TextStyle(
      fontSize: 18,
      color: dart,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return TextStyle(
      fontSize: 14,
      color: active,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle h3HintStyle() {
    return TextStyle(
      fontSize: 14,
      color: light,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle h3AcctiveStyle() {
    return TextStyle(
      fontSize: 16,
      color: dart,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h3ButtonStyle() {
    return TextStyle(
      fontSize: 16,
      color: button,
      fontWeight: FontWeight.w500,
    );
  }
} // end class


  