import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/transformers.dart';

class BlocEventTransformers {
  BlocEventTransformers._();

  static EventTransformer<Event> debounceSequential<Event>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).asyncExpand(mapper);
  }
}
