import 'package:flutter/material.dart';

class Adapt {
  static MediaQueryData mediaQuery;

  static init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
  }

  static px(number) {
    var _ratio = mediaQuery.size.width / 750;
    return number * _ratio;
  }

  static onePx() {
    return 1 / mediaQuery.devicePixelRatio;
  }

  static screenW() {
    return mediaQuery.size.width;
  }

  static screenH() {
    return mediaQuery.size.height;
  }

  static padTopH() {
    return mediaQuery.padding.top;
  }

  static padBotH() {
    return mediaQuery.padding.bottom;
  }
}
