import 'package:flutter/material.dart';
import 'package:layouting/helpers/data.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON Listview in Flutter'),
        actions: [
          IconButton(
            color: Colors.white,
            iconSize: 30,
            icon: const Icon(Icons.arrow_circle_right_rounded),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            String namaPertama = (listData[index].nama).split('')[0];
            return ListTile(
              leading: CircleAvatar(
                child: Text(namaPertama),
              ),
              title: Text(listData[index].nama),
              subtitle: Text(listData[index].chat),
              trailing: Text(listData[index].time),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Color.fromARGB(255, 207, 201, 201),
              ),
          itemCount: listData.length),
    );
  }
}
