import 'package:flutter/rendering.dart';
import 'package:flutter_base/utils/theme/color.dart';

class AppTheme {
  static TextStyle textStyle(
    double fontSize,
    FontWeight fontWeight,
    Color color,
  ) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle text14Bold({Color color = AppColor.black}) {
    return textStyle(14.0, FontWeight.bold, color);
  }

  static TextStyle text14Regular({Color color = AppColor.black}) {
    return textStyle(14.0, FontWeight.normal, color);
  }

  static TextStyle text16Regular({Color color = AppColor.black}) {
    return textStyle(16.0, FontWeight.normal, color);
  }

  static TextStyle text24Regular({Color color = AppColor.black}) {
    return textStyle(24.0, FontWeight.normal, color);
  }
}
