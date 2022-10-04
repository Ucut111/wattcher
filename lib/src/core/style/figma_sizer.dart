import 'package:sizer/sizer.dart';

const double _figmaWidth = 375;
const double _figmaHeight = 812;

const _maxDesignScale = 1.0;
const _minDesignScale = 0.4;

extension FigmaSizerExtension on num {
  double get fh => (100.h / _figmaHeight).clamp(_minDesignScale, _maxDesignScale) * this;

  double get fw => (100.w / _figmaWidth).clamp(_minDesignScale, _maxDesignScale) * this;
}
