import 'package:flutter_bloc/flutter_bloc.dart';

import 'log/i_log.dart';

class CustomBlocObserver extends BlocObserver {
  CustomBlocObserver();

  @override
  void onCreate(BlocBase blocBase) {
    log.debug('${blocBase.runtimeType} created');
    super.onCreate(blocBase);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log.debug('${bloc.runtimeType} received\n'
        '  event:     ${_toString(event)}');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (bloc.runtimeType is Cubit) {
      final message = "${bloc.runtimeType}'s state changed\n"
          '  From:      ${_toString(change.currentState)}\n'
          '  To:        ${_toString(change.nextState)}\n';

      log.debug(message);
    }
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    final nextState = transition.nextState;

    LogCallback? logging;
    String? from, to;

    from = _toString(transition.currentState);
    to = _toString(nextState);

    String message = "${bloc.runtimeType}'s state changed\n"
        '  From:      $from\n'
        '  To:        $to\n';

    message += '  By:        ${_toString(transition.event)}';

    (logging ?? log.debug).call(message);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase blocBase, Object error, StackTrace stackTrace) {
    log.error('${blocBase.runtimeType} failed\n'
        '  error:  $error\n'
        '  ${stackTrace.toString()}');

    super.onError(blocBase, error, stackTrace);
  }

  @override
  void onClose(BlocBase blocBase) {
    log.debug('${blocBase.runtimeType} closed');
    super.onClose(blocBase);
  }

  String? _toString<T>(T object) {
    if (object == null) return null;
    return RegExp('[a-zA-Z].*').firstMatch(object.runtimeType.toString())?[0];
  }
}
