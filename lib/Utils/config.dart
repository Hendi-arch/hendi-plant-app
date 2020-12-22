import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dart:ui' show WindowPadding, window;

const String assetPath = "assets";
const double widthFrameDesign = 375;
const double heightFrameDesign = 812;

class SizeConfig {
  static WindowPadding windowPadding;
  static double screenWidth;
  static double screenHeight;
  static double scaleDiagonal;
  static double _screenDiagonal;
  static MediaQueryData _mediaQueryData;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    windowPadding = window.viewPadding;
    _screenDiagonal =
        math.sqrt((screenHeight * screenHeight) + (screenWidth * screenHeight));
    scaleDiagonal = _screenDiagonal /
        (math.sqrt((widthFrameDesign * widthFrameDesign) +
            (heightFrameDesign * heightFrameDesign)));
  }

  double calculateSize(
      double size, double heightOrWidthDesain, double heightOrWidthDevice) {
    double result;
    result = size / heightOrWidthDesain * heightOrWidthDevice;

    return result;
  }
}
