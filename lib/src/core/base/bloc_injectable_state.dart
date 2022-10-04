import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchers_widget/src/core/base/injectable_state.dart';

abstract class BlocInjectableState<T extends StatefulWidget, G extends Bloc<E, S>, E, S>
    extends InjectableState<T, G, S> {
  G get bloc => super.cubit;

  BlocInjectableState({
    void Function(G cubit)? onCubitCreated,
  }) : super(
          onCubitCreated: onCubitCreated,
        );

  BlocInjectableState.empty() : super.empty();

  BlocInjectableState.singleton() : super.singleton();

  BlocInjectableState.withParams({
    param1,
    param2,
  }) : super.withParams(
          param1: param1,
          param2: param2,
        );

  BlocInjectableState.withParamsNavigator({
    param1,
    param2,
  }) : super.withParamsNavigator(
          param1: param1,
          param2: param2,
        );
}
