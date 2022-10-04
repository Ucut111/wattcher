import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final Color? color;

  final double? width;
  final double? height;
  final double? size;
  final BoxFit boxFit;

  final String svgName;

  const SvgIcon(
    this.svgName, {
    this.color,
    this.width,
    this.height,
    this.size,
    this.boxFit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgName,
      fit: boxFit,
      width: size ?? width ?? 18,
      height: size ?? height ?? 18,
      color: color,
      package: 'watchers_widget',
    );
  }
}
