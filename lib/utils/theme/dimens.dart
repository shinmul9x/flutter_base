import 'package:get/get.dart';

class Dimens {
  // iphoneX screen size
  static const default_screen_width = 375.0;
  static const default_screen_height = 812.0;
  static double _ratio = 0.0;

  static double get _getRatio {
    if (!_ratio.isEqual(0.0)) {
      return _ratio;
    }

    double ratioWidth = Get.width / default_screen_width;
    double ratioHeight = Get.height / default_screen_height;
    _ratio = ratioWidth >= ratioHeight ? ratioWidth : ratioHeight;
    return _ratio;
  }

  static double dimen(double value) => value * _getRatio;
  static double get dimen4 => dimen(4);
  static double get dimen8 => dimen(8);
  static double get dimen10 => dimen(10);
  static double get dimen12 => dimen(12);
  static double get dimen14 => dimen(14);
  static double get dimen20 => dimen(20);
  static double get dimen24 => dimen(24);
  static double get dimen16 => dimen(16);
  static double get dimen30 => dimen(30);
  static double get dimen32 => dimen(32);
  static double get dimen36 => dimen(36);
  static double get dimen82 => dimen(82);
}
