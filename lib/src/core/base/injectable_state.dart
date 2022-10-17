import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchers_widget/src/app/di/locator.dart';

abstract class InjectableState<T extends StatefulWidget, G extends BlocBase<S>, S>
    extends State<T> {
  @protected
  late G cubit;

  void Function(G cubit)? _onCubitCreated;

  final bool _shouldProvide;

  GlobalKey<NavigatorState>? _navigatorKey;

  InjectableState({
    void Function(G cubit)? onCubitCreated,
  })  : cubit = locator.get<G>(),
        _onCubitCreated = onCubitCreated,
        _shouldProvide = true,
        super();

  InjectableState.empty()
      : _shouldProvide = false,
        super();

  InjectableState.singleton()
      : _shouldProvide = false,
        cubit = locator(),
        super();

  InjectableState.withParams({
    param1,
    param2,
  })  : _shouldProvide = true,
        cubit = locator.get<G>(param1: param1, param2: param2),
        super();

  InjectableState.withParamsNavigator({
    param1,
    param2,
  })  : cubit = locator.get<G>(param1: param1, param2: param2),
        _shouldProvide = true,
        _navigatorKey = GlobalKey(),
        super();

  @override
  void didChangeDependencies() {
    try {
      // ignore: unnecessary_statements
      cubit;
    } on Exception catch (_) {
      throw 'At first you need init the cubit in [initState], [didChangeDependencies] or in [getIt]';
    }
    super.didChangeDependencies();
  }

  Widget builder(BuildContext context, S state);

  void listener(BuildContext context, S state) {}

  bool buildWhen(S previous, S current) => true;

  bool listenWhen(S previous, S current) => true;

  @override
  Widget build(BuildContext context) {
    final consumer = BlocConsumer<G, S>(
      bloc: _shouldProvide ? null : cubit,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
      builder: builder,
      listener: listener,
    );

    final navigator = _navigatorKey != null
        ? Navigator(
            key: _navigatorKey,
            onGenerateRoute: (_) => MaterialPageRoute(builder: (_) => consumer),
          )
        : consumer;

    final provider = _shouldProvide
        ? BlocProvider(
            lazy: false,
            create: (context) {
              _onCubitCreated?.call(cubit);
              return cubit;
            },
            child: navigator,
          )
        : BlocProvider.value(
            value: cubit,
            child: navigator,
          );

    return provider;
  }
}
