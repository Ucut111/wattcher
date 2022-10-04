import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class DependentState<T extends StatefulWidget, G extends BlocBase<S>, S> extends State<T> {
  bool buildWhen(S previous, S current) => true;

  bool listenWhen(S previous, S current) => true;

  Widget builder(BuildContext context, S state, G cubit);

  void listener(BuildContext context, S state, G cubit) {}

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<G>();

    final consumer = BlocConsumer<G, S>(
      buildWhen: buildWhen,
      listenWhen: listenWhen,
      builder: (context, state) => builder(context, state, cubit),
      listener: (context, state) => listener(context, state, cubit),
    );

    return consumer;
  }
}
