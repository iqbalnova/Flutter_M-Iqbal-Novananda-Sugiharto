import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Badges'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/barcodescreen');
              },
              icon: const Icon(Icons.qr_code_scanner_outlined)),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Chip(
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.deepPurple,
            label: Text('BADGE', style: TextStyle(color: Colors.white)),
          ),
          Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.deepPurple,
            borderRadius: BorderRadius.circular(8),
            badgeContent:
                const Text('BADGE', style: TextStyle(color: Colors.white)),
          ),
        ],
      )),
    );
  }
}
