import 'package:flutter/material.dart';

class MyConstants {
  static EdgeInsets appPadding =
      const EdgeInsets.only(left: 15, right: 15, top: 15);
  static double borderRadius = 8;

  // COLORs & GRADIENTs
  static Color appColor = const Color.fromARGB(255, 54, 53, 190);
  static var bluishGradient = const LinearGradient(colors: [
    Color.fromARGB(255, 54, 53, 190),
    Color.fromARGB(255, 32, 88, 227),
  ]);
}
