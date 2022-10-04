import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';

const _loader = SizedBox(
  width: 120,
  child: FlareActor(
    "packages/watchers_widget/assets/flare/loader.flr",
    alignment: Alignment.center,
    fit: BoxFit.contain,
    color: CustomColors.primary,
    animation: 'loader',
  ),
);

class LoadingWidget extends StatelessWidget {
  const LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: _loader,
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.chatBackground,
      body: SafeArea(
        top: false,
        child: Center(
          child: _loader,
        ),
      ),
    );
  }
}
