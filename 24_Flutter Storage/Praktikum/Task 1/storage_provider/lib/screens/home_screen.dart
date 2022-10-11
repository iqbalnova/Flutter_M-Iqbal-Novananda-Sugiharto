import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/register_providers.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RegisterProvider>().getDataModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Consumer<RegisterProvider>(builder: (context, value, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello: ${(value.data?.nama).toString()}',
                style: const TextStyle(fontSize: 30),
              ),
              Text((value.data?.email).toString(),
                  style: const TextStyle(fontSize: 30)),
              ElevatedButton(
                  onPressed: () {
                    context.read<RegisterProvider>().deleteData();
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                  },
                  child: const Text('SignOut'))
            ],
          ),
        );
      })),
    );
  }
}
