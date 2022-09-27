import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                label: Text('Full Name'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                label: Text('Phone'),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  {'nama': nameController.text, 'no_hp': phoneController.text},
                );
              },
              child: const Text('Submit'),
            ),
          )
        ],
      )),
    );
  }
}
