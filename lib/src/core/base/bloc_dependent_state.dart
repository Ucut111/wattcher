import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchers_widget/src/core/base/dependent_state.dart';

abstract class BlocDependentState<T extends StatefulWidget, G extends Bloc<E, S>, E, S>
    extends DependentState<T, G, S> {}
