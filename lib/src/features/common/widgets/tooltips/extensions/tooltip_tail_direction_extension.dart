import '../tooltip_tail_builder_factory.dart';

extension TooltipTailDirectionsX on TooltipTailDirection {
  T map<T>({
    required T bottomRight,
    required T topRight,
    required T left,
    required T right,
  }) {
    switch (this) {
      case TooltipTailDirection.bottomRight:
        return bottomRight;
      case TooltipTailDirection.topRight:
        return topRight;
      case TooltipTailDirection.left:
        return left;
      case TooltipTailDirection.right:
        return right;
    }
  }
}
