import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// mengambil properti height berdasarkan ukuran perlayar
double getPropertionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;

  // 812 adalah layout height yang designer gunakan
  return (inputHeight / 812.0) * screenHeight;
}

// mengambil properti widht berdasarkan ukuran perlayar
double getPropertionateScreenWidht(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  // 812 adalah layout Width yang designer gunakan
  return (inputWidth / 375.0) * screenWidth;
}
