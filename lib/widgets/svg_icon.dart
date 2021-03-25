import 'package:flutter/material.dart';

class IconSvg extends StatelessWidget {
  final double iconSize;
  final Alignment alignment;
  final Color? color;
  final EdgeInsetsGeometry padding;
  final Widget? icon;

  const IconSvg({
    Key? key,
    this.iconSize = 24.0,
    this.alignment = Alignment.center,
    this.color,
    this.padding = const EdgeInsets.all(4.0),
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        height: iconSize,
        width: iconSize,
        child: Align(
          alignment: alignment,
          child: IconTheme.merge(
            data: IconThemeData(
              size: iconSize,
              color: color,
            ),
            child: icon ?? Container(),
          ),
        ),
      ),
    );
  }
}
