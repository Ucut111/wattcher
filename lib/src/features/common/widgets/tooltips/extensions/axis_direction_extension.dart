import 'package:flutter/material.dart';

extension AxisDirectionX on AxisDirection {
  T map<T>({
    required T up,
    required T down,
    required T left,
    required T right,
  }) {
    switch (this) {
      case AxisDirection.up:
        return up;
      case AxisDirection.down:
        return down;
      case AxisDirection.left:
        return left;
      case AxisDirection.right:
        return right;
    }
  }
}
