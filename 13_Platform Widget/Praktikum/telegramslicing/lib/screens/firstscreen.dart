import 'package:flutter/material.dart';
import 'package:telegramslicing/helpers/data.dart';

import '../widget/drawer.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(listData[index].avatar),
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
      drawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
