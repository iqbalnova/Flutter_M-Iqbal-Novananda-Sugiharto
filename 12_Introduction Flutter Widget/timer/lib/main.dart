import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String timerText = "Timer ";

  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        timerText = '${DateTime.now().second}';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Timer Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HALO'),
        ),
        body: MainWidget(timerText: timerText),
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    Key? key,
    required this.timerText,
  }) : super(key: key);

  final String timerText;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "Stopwatch",
          style: TextStyle(fontSize: 20),
        ),
        Text(timerText, style: const TextStyle(fontSize: 30))
      ],
    ));
  }
}
