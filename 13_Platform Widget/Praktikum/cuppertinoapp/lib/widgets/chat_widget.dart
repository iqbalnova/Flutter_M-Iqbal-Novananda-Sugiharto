// ignore: file_names

import 'package:cuppertinoapp/helpers/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CupertinoButton(
            pressedOpacity: 0.4,
            onPressed: null,
            child: Text(
              'Edit',
              style: TextStyle(color: CupertinoColors.activeBlue),
            )),
        Text(
          'Chats',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        CupertinoButton(
            onPressed: null,
            child: Icon(
              CupertinoIcons.square_favorites,
              color: CupertinoColors.activeBlue,
              size: 30,
            )),
        // Expanded(child: ListView.separated(itemBuilder: , separatorBuilder: separatorBuilder, itemCount: itemCount))
        // Expanded(
        //   child: ListView.separated(
        //       itemBuilder: ((context, index) {
        //         return ListTile(
        //           leading: CircleAvatar(
        //             backgroundImage: AssetImage(listDataChat[index].avatar),
        //           ),
        //           title: Text(listDataChat[index].nama),
        //           subtitle: Text(listDataChat[index].chat),
        //           trailing: Text(listDataChat[index].time),
        //         );
        //       }),
        //       separatorBuilder: (context, index) => const Divider(
        //             color: Color.fromARGB(255, 207, 201, 201),
        //           ),
        //       itemCount: listDataChat.length),
        // )
      ],
    );
  }
}
