import 'dart:ui';

import '../tooltips/tooltips.dart';

enum TooltipTailDirection {
  bottomRight,
  topRight,
  left,
  right,
}

class TooltipTailBuilderFactory {
  final double width;
  final double height;

  const TooltipTailBuilderFactory({
    required this.width,
    required this.height,
  });

  Path Function(
    Offset,
    Offset,
    Offset,
  ) getBuilder(TooltipTailDirection tooltipTailes) => tooltipTailes.map(
        bottomRight: _bottomRightTailBuilder,
        topRight: _topRightTailBuilder,

        // TODO(dartloli): more tails from figma
        left: _defaultTailBuilder,
        right: _defaultTailBuilder,
      );

  Path _defaultTailBuilder(Offset tip, Offset point2, Offset point3) {
    return Path()
      ..moveTo(tip.dx, tip.dy)
      ..moveTo(point2.dx, point2.dy)
      ..lineTo(point3.dx, point3.dy)
      ..close();
  }

  // Done
  Path _topRightTailBuilder(Offset tip, Offset point2, Offset point3) {
    final path = Path();

    path.lineTo(width, height * 1.02);
    path.cubicTo(width, height * 1.02, -0.09, height * 1.02, width * 0.01, height * 1.02);
    path.cubicTo(width * 0.11, height * 1.02, width / 5, height * 1.02, width * 0.35, height * 0.8);
    path.cubicTo(
        width * 0.45, height * 0.66, width * 0.7, height * 0.29, width * 0.86, height * 0.05);
    path.cubicTo(width * 0.92, -0.02, width, height * 0.04, width, height * 0.17);
    path.cubicTo(width, height * 0.17, width, height * 1.02, width, height * 1.02);
    path.cubicTo(width, height * 1.02, width, height * 1.02, width, height * 1.02);

    return path.shift(point3 - Offset(width, height));
  }

  // Done
  Path _bottomRightTailBuilder(Offset tip, Offset point2, Offset point3) {
    final path = Path();

    path.lineTo(width, 0);
    path.cubicTo(width, 0, -0.09, 0, width * 0.01, 0);
    path.cubicTo(width * 0.11, 0, width / 5, 0, width * 0.35, height * 0.22);
    path.cubicTo(
        width * 0.45, height * 0.36, width * 0.7, height * 0.73, width * 0.86, height * 0.97);
    path.cubicTo(width * 0.92, height * 1.05, width, height * 0.98, width, height * 0.85);
    path.cubicTo(width, height * 0.85, width, 0, width, 0);
    path.cubicTo(width, 0, width, 0, width, 0);

    return path.shift(point2 - Offset(width, 0));
  }
}
