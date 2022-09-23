import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String imgUrl;
  const SecondScreen({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview'),
      ),
      body: Image.network(
        imgUrl,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}
