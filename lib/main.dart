import 'package:bloc/bloc.dart';
import 'package:bloc_docs_tutorials/flutter_counter/app.dart';
import 'package:bloc_docs_tutorials/flutter_infinite_list/app.dart';
import 'package:bloc_docs_tutorials/flutter_infinite_list/simple_bloc_observer.dart';
import 'package:bloc_docs_tutorials/flutter_login/app.dart';
import 'package:bloc_docs_tutorials/flutter_timer/app.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Tutorials',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const MyHomePage());
  }

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Bloc Tutorials'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            CounterRouteButton(),
            TimerRouteButton(),
            InfiniteListRouteButton(),
            LoginRouteButton(),
          ],
        ),
      ),
    );
  }
}

class CounterRouteButton extends StatelessWidget {
  const CounterRouteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(CounterApp.route());
      },
      child: Text('Flutter Counter'),
    );
  }
}

class TimerRouteButton extends StatelessWidget {
  const TimerRouteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(FlutterTimer.route());
      },
      child: Text('Flutter Timer'),
    );
  }
}

class InfiniteListRouteButton extends StatelessWidget {
  const InfiniteListRouteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(InfiniteListApp.route());
      },
      child: Text('Flutter Infinite List'),
    );
  }
}

class LoginRouteButton extends StatelessWidget {
  const LoginRouteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(FlutterLogin.route());
      },
      child: Text('Flutter Login'),
    );
  }
}
