import 'package:flutter/material.dart';

class SizeConfiguration {
  MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  double? defaultSize;
  Orientation? orientation;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData?.size.width;
    screenHeight = mediaQueryData?.size.height;
    orientation = mediaQueryData?.orientation;
  }
}

double setHeight(double? inputHeight) {
  final screenHeight = SizeConfiguration.screenHeight;
  return (inputHeight ?? 1) * (screenHeight! / 100);
}

double setWidth(double? inputWidth) {
  final screenWidth = SizeConfiguration.screenWidth;
  return (inputWidth ?? 1) * (screenWidth! / 100);
}
