import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/providers/contact_providers.dart';
import 'package:providerapp/screens/secondscreen.dart';
import '../screens/firstscreen.dart';
// import '../screens/secondscreen.dart';

class Routes extends StatelessWidget {
  const Routes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactProvider(),
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
