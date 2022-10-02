import 'package:flutter/material.dart';

import 'package:navigationapp/helpers/data.dart';
import 'package:navigationapp/screens/secondscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            String namaPertama = (listData[index].nama).split('')[0];
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return SecondScreen(
                    nama: listData[index].nama,
                    nomer: listData[index].noHp,
                  );
                })));
              },
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(namaPertama),
                ),
                title: Text(listData[index].nama),
                subtitle: Text(listData[index].noHp),
              ),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Color.fromARGB(255, 207, 201, 201),
              ),
          itemCount: listData.length),
    );
  }
}
