import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String nama, nomer;
  const SecondScreen({Key? key, required this.nama, required this.nomer})
      : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Contact')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            child: Text(widget.nama.split('')[0]),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.nama,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          Text(widget.nomer)
        ],
      )),
    );
  }
}
