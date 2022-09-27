import 'package:flutter/material.dart';
import 'secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List data = [
    {'nama': 'Iqbal', 'no_hp': 092323},
    {'nama': 'Messi', 'no_hp': 082444},
    {'nama': 'Ronaldo', 'no_hp': 024213},
    {'nama': 'Neymar', 'no_hp': 023232},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text(data[index]['nama']!),
              subtitle: Text((data[index]['no_hp'])!.toString()),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Color.fromARGB(255, 207, 201, 201),
              ),
          itemCount: data.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final res = await Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) {
              return SecondScreen();
            },
          ));

          setState(() => data.add(res));
        },
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
