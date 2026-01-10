import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('$bloc: $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Close: $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Create: $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('$bloc: $error');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('$bloc: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('$bloc: $transition');
  }

  @override
  void onDone(
    Bloc<dynamic, dynamic> bloc,
    Object? event, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    debugPrint('$bloc: $event');
  }
}
