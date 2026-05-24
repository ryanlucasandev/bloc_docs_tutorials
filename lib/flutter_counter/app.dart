import 'package:flutter/material.dart';
import 'package:bloc_docs_tutorials/flutter_counter/counter/counter.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(home: const CounterPage());

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const CounterPage());
  }
}
