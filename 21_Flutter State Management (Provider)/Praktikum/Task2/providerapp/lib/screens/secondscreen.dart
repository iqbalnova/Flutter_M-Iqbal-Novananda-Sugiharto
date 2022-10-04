import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/Model/contact_model.dart';
import 'package:providerapp/providers/contact_providers.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ContactProvider>(context);
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
                if (nameController.text == '') return;
                if (phoneController.text == '') return;
                final valueContact = ContactModel(
                    nama: nameController.text, noHp: phoneController.text);
                data.addContact(valueContact);
                Navigator.pop(context);
              },
              child: const Text('Submit'),
            ),
          )
        ],
      )),
    );
  }
}
