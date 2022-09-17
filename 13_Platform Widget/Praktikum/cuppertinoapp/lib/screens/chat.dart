import 'package:cuppertinoapp/widgets/search.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/chat_widget.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ChatWidget(),
        SearchWidget(),
      ],
    );
  }
}
