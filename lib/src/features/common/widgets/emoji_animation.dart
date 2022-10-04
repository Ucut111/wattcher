import 'package:flutter/material.dart';

class EmojiAnimation extends StatefulWidget {
  final Widget child;
  final String animationId;
  final Function(String) onCompleted;
  final bool mirror;

  const EmojiAnimation({
    required this.child,
    required this.animationId,
    required this.onCompleted,
    required this.mirror,
  });

  @override
  State<EmojiAnimation> createState() => _EmojiAnimationState();
}

class _EmojiAnimationState extends State<EmojiAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            widget.onCompleted(widget.animationId);
          }
        },
      );
    _startAnimation();
    super.initState();
  }

  void _startAnimation() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller
        ..reset()
        ..forward();
    });
  }

  @override
  void didUpdateWidget(covariant EmojiAnimation oldWidget) {
    _startAnimation();
    super.didUpdateWidget(oldWidget);
  }

  Animation<double> get opacityAnimation => TweenSequence<double>(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0, end: 0.35),
            weight: 20,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.35, end: 0.7),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.7, end: 1.0),
            weight: 7,
          ),
          TweenSequenceItem<double>(
            tween: ConstantTween<double>(1.0),
            weight: 24,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 1.0, end: 0.7),
            weight: 20,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.7, end: 0.35),
            weight: 7,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.35, end: 0),
            weight: 12,
          ),
        ],
      ).animate(_controller);

  Animation<double> get scaleAnimation => TweenSequence<double>(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: ConstantTween<double>(0.5),
            weight: 20,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.5, end: 0.55),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: ConstantTween<double>(0.55),
            weight: 7,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.55, end: 0.65),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.65, end: 1.0),
            weight: 14,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 1.0, end: 0.75),
            weight: 20,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.75, end: 0.58),
            weight: 7,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.58, end: 0.5),
            weight: 12,
          ),
        ],
      ).animate(_controller);

  Animation<double> get xOffesetAnimation => TweenSequence<double>(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0, end: 20),
            weight: 20,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 20, end: -6),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: -6, end: -20),
            weight: 7,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: -20, end: -20),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: -20, end: 20),
            weight: 14,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 20, end: -14),
            weight: 20,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: -14, end: 20),
            weight: 7,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 20, end: -20),
            weight: 12,
          ),
        ],
      ).animate(_controller);

  Animation<double> get yOffesetAnimation =>
      Tween<double>(begin: 0, end: -300).animate(_controller);

  Animation<double> get mirrorOpacityAnimation => TweenSequence<double>(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0, end: 0.35),
            weight: 13,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.35, end: 0.7),
            weight: 19,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.35, end: 1),
            weight: 8,
          ),
          TweenSequenceItem<double>(
            tween: ConstantTween<double>(1),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 1, end: 0.7),
            weight: 23,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.7, end: 0.35),
            weight: 12,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.35, end: 0),
            weight: 15,
          ),
        ],
      ).animate(_controller);

  Animation<double> get mirrorScaleAnimation => TweenSequence<double>(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.5, end: 0.58),
            weight: 13,
          ),
          TweenSequenceItem<double>(
            tween: ConstantTween<double>(0.58),
            weight: 27,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.58, end: 1),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 1, end: 0.75),
            weight: 23,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.75, end: 0.58),
            weight: 12,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0.58, end: 0.5),
            weight: 15,
          ),
        ],
      ).animate(_controller);

  Animation<double> get mirrorXOffset => TweenSequence<double>(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 0, end: -20),
            weight: 13,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: -20, end: 22),
            weight: 19,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 22, end: 22),
            weight: 8,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 22, end: -17),
            weight: 10,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: -17, end: 17),
            weight: 23,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: 17, end: -17),
            weight: 12,
          ),
          TweenSequenceItem<double>(
            tween: Tween<double>(begin: -17, end: 5),
            weight: 15,
          ),
        ],
      ).animate(_controller);

  @override
  Widget build(BuildContext context) {
    final xOffeset = widget.mirror ? mirrorXOffset : xOffesetAnimation;
    final yOffeset = yOffesetAnimation;
    final scale = widget.mirror ? mirrorScaleAnimation : scaleAnimation;
    final opacity = widget.mirror ? mirrorOpacityAnimation : opacityAnimation;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(xOffeset.value, yOffeset.value),
          child: Transform.scale(
            scale: scale.value,
            child: Opacity(
              opacity: opacity.value,
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}

// Todo(dartloli): то на новый год
// void showSnackBar(BuildContext context) {
//     final snackBar = SnackBar(
//       content: Row(
//         children: const [
//           Text(
//             'Пользователь разблокирован',
//             style: TextStyles.highlighted,
//           ),
//           Spacer(),
//           Icon(
//             Icons.close,
//             color: CustomColors.danger,
//           ),
//         ],
//       ),
//       backgroundColor: CustomColors.snackBackground,
//       behavior: SnackBarBehavior.floating,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//       ),
//     );
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }