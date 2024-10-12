import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFE0E0E0);
  static const Color secondColor = Color(0xFF9E95A2);
  static const Color bgColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color unSelectedColor = Color.fromRGBO(214, 209, 213, 1);
  static const Color SelectedColor = Color.fromRGBO(223, 85, 50, 1);
// Gradient declaration
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFF39519),
      Color(0xFFFFCD67),
    ],
  );
}
