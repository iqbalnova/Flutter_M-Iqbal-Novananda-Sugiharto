import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/providers/contact_providers.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ContactProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
      ),
      body: data.dataContact.isEmpty
          ? const EmptyWidget()
          : ListView.separated(
              padding: const EdgeInsets.all(20),
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: const Icon(Icons.person_pin, size: 30),
                  title: Text(data.dataContact[index].nama),
                  subtitle: Text((data.dataContact[index].noHp).toString()),
                  tileColor: Colors.green[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      size: 26,
                    ),
                    onPressed: (() =>
                        data.deleteContact(data.dataContact[index])),
                  ),
                );
              }),
              separatorBuilder: (context, index) => const Divider(
                    color: Color.fromARGB(255, 207, 201, 201),
                  ),
              itemCount: data.dataContact.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            (Icons.group),
            size: 40,
          ),
          Text(
            'Your contact is empty',
          ),
        ],
      ),
    );
  }
}
