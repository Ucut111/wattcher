import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

enum PressType {
  longPress,
  singleClick,
}

enum PreferredPosition {
  top,
  bottom,
}

class CustomPopupMenuController extends ChangeNotifier {
  bool menuIsShowing = false;

  void showMenu() {
    menuIsShowing = true;
    notifyListeners();
  }

  void hideMenu() {
    menuIsShowing = false;
    notifyListeners();
  }

  void toggleMenu() {
    menuIsShowing = !menuIsShowing;
    notifyListeners();
  }
}

Rect _menuRect = Rect.zero;

class CustomPopupMenu extends StatefulWidget {
  const CustomPopupMenu({
    required this.child,
    required this.menuBuilder,
    required this.pressType,
    this.controller,
    this.arrowColor = const Color(0xFF4C4C4C),
    this.barrierColor = Colors.black12,
    this.position,
    this.menuOnChange,
    this.enablePassEvent = true,
    required this.isLTR,
  });

  final Widget child;
  final PressType pressType;
  final Color arrowColor;
  final Color barrierColor;
  final CustomPopupMenuController? controller;
  final Widget Function() menuBuilder;
  final PreferredPosition? position;
  final void Function(bool)? menuOnChange;
  final bool isLTR;

  /// Pass tap event to the widgets below the mask.
  /// It only works when [barrierColor] is transparent.
  final bool enablePassEvent;

  @override
  _CustomPopupMenuState createState() => _CustomPopupMenuState();
}

class _CustomPopupMenuState extends State<CustomPopupMenu> {
  RenderBox? _childBox;
  RenderBox? _parentBox;
  OverlayEntry? _overlayEntry;
  CustomPopupMenuController? _controller;
  bool _canResponse = true;

  void _showMenu() {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        final Widget menu = Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: _parentBox!.size.width,
              minWidth: 0,
            ),
            child: CustomMultiChildLayout(
              delegate: _MenuLayoutDelegate(
                childOffset: _childBox!.localToGlobal(
                  const Offset(0, 0),
                  ancestor: _parentBox,
                ),
                childSize: _childBox!.size,
                isLTR: widget.isLTR,
              ),
              children: <Widget>[
                LayoutId(
                  id: _MenuLayoutId.content,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Material(
                        color: Colors.transparent,
                        child: widget.menuBuilder(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
        return Listener(
          behavior: widget.enablePassEvent ? HitTestBehavior.translucent : HitTestBehavior.opaque,
          onPointerDown: (PointerDownEvent event) {
            final Offset offset = event.localPosition;
            // If tap position in menu
            if (_menuRect.contains(Offset(offset.dx, offset.dy))) {
              return;
            }
            _controller?.hideMenu();
            // When [enablePassEvent] works and we tap the [child] to [hideMenu],
            // but the passed event would trigger [showMenu] again.
            // So, we use time threshold to solve this bug.
            _canResponse = false;
            Future.delayed(const Duration(milliseconds: 300)).then((_) => _canResponse = true);
          },
          child: widget.barrierColor == Colors.transparent
              ? menu
              : Container(
                  color: widget.barrierColor,
                  child: menu,
                ),
        );
      },
    );
    if (_overlayEntry != null) {
      Overlay.of(context)!.insert(_overlayEntry!);
    }
  }

  void _hideMenu() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  void _updateView() {
    final bool menuIsShowing = _controller?.menuIsShowing ?? false;
    widget.menuOnChange?.call(menuIsShowing);
    if (menuIsShowing) {
      _showMenu();
    } else {
      _hideMenu();
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    _controller = widget.controller;
    _controller ??= CustomPopupMenuController();

    _controller?.addListener(_updateView);

    WidgetsBinding.instance.addPostFrameCallback((call) {
      if (mounted) {
        _childBox = context.findRenderObject() as RenderBox?;

        _parentBox = Overlay.of(context)?.context.findRenderObject() as RenderBox?;
      }
    });
  }

  @override
  void didUpdateWidget(covariant CustomPopupMenu oldWidget) {
    _init();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _hideMenu();
    _controller?.removeListener(_updateView);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final child = Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: widget.child,
        onTap: () {
          if (widget.pressType == PressType.singleClick && _canResponse) {
            _controller?.showMenu();
          }
        },
        onLongPress: () {
          if (widget.pressType == PressType.longPress && _canResponse) {
            _controller?.showMenu();
          }
        },
      ),
    );
    if (Platform.isIOS) {
      return child;
    } else {
      return WillPopScope(
        onWillPop: () {
          _hideMenu();
          return Future.value(true);
        },
        child: child,
      );
    }
  }
}

enum _MenuLayoutId {
  content,
}

class _MenuLayoutDelegate extends MultiChildLayoutDelegate {
  final Offset childOffset;
  final Size childSize;
  final bool isLTR;

  _MenuLayoutDelegate({
    required this.childOffset,
    required this.childSize,
    required this.isLTR,
  });

  @override
  void performLayout(Size size) {
    Size contentSize = Size.zero;
    Offset contentOffset = const Offset(0, 0);

    if (hasChild(_MenuLayoutId.content)) {
      contentSize = layoutChild(
        _MenuLayoutId.content,
        BoxConstraints.loose(size),
      );
    }

    double yOffset = childOffset.dy - max(0, contentSize.height - childSize.height);

    if (childOffset.dy - contentSize.height < 0) {
      yOffset = yOffset + contentSize.height - childSize.height;
    }

    if (isLTR) {
      contentOffset = Offset(
        childOffset.dx,
        yOffset,
      );
    } else {
      contentOffset = Offset(
        childOffset.dx - max(0, contentSize.width - childSize.width),
        yOffset,
      );
    }

    if (hasChild(_MenuLayoutId.content)) {
      positionChild(_MenuLayoutId.content, contentOffset);
    }

    _menuRect = Rect.fromLTWH(
      contentOffset.dx,
      contentOffset.dy,
      contentSize.width,
      contentSize.height,
    );
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) => false;
}
