import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final Color? color;

  final double? width;
  final double? height;
  final BoxFit boxFit;

  final String svgName;

  const SvgIcon(
    this.svgName, {
    this.color,
    this.width,
    this.height,
    this.boxFit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgName,
      fit: boxFit,
      width: width,
      height: height,
      color: color,
      package: 'watchers_widget',
    );
  }
}
