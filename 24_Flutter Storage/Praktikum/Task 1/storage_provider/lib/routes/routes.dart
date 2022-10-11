import 'package:flutter/material.dart';

import 'package:storage_provider/providers/register_providers.dart';
import '../screens/home_screen.dart';
import '../screens/register_screen.dart';
import 'package:provider/provider.dart';
// import '../screens/secondscreen.dart';

class Routes extends StatelessWidget {
  const Routes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(),
      child: MaterialApp(
        title: 'Routes',
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstScreen(),
          '/second': (context) => const SecondScreen(),
        },
      ),
    );
  }
}
