import 'dart:ui';

class Constants {
  final double kDefaultPadding = 18.0;

  double getScreenPropotionHeight(double actualHeight, Size size) {
    return (actualHeight / 896.0) * size.height;
  }

  double getScreenPropotionWidth(double actualWidth, Size size) {
    return (actualWidth / 414.0) * size.width;
  }
}
