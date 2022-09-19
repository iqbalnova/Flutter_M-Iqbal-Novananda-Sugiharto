import 'package:flutter/material.dart';
import 'package:usepackage/screens/badge_screen.dart';
import 'package:usepackage/screens/barcode_screen.dart';

class Routes extends StatelessWidget {
  const Routes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const BadgeScreen(),
        '/barcodescreen': (context) => const BarcodeScreen(),
      },
    );
  }
}
