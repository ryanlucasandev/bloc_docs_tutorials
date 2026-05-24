import 'package:bloc_docs_tutorials/flutter_timer/timer/view/timer_page.dart';
import 'package:flutter/material.dart';

class FlutterTimer extends StatelessWidget {
  const FlutterTimer({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TimerPage());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Timer',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(72, 74, 126, 1),
        ),
      ),
      home: const TimerPage(),
    );
  }
}
