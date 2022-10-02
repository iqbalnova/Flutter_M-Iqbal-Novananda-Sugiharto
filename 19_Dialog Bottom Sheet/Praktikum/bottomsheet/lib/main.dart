import 'package:bottomsheet/routes/routes.dart';
import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Routes();
  }
}
