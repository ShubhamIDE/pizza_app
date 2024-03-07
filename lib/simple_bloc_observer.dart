import 'dart:developer';

import 'package:bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log("on create: block ${bloc.runtimeType}");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log("on event: block ${bloc.runtimeType}, event $event");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log("on change: block ${bloc.runtimeType}, change $change");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log("on transition: block ${bloc.runtimeType}, transition $transition");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log("on error : block ${bloc.runtimeType}, error $error");
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log("on close: block ${bloc.runtimeType}");
  }
}
