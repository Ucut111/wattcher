import 'package:flutter/material.dart';

class Transitions {
  Transitions._();

  static Route buildFadeTranstion(Widget screen) => PageRouteBuilder(
        pageBuilder: (_, __, ___) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}
