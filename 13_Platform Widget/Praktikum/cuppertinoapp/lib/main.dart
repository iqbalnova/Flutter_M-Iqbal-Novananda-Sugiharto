import 'package:cuppertinoapp/screens/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  // Add these 2 lines
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(const CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavBarWidget();
  }
}

class BottomNavBarWidget extends StatelessWidget {
  BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  final List tabs = [
    const Center(child: Text('Ini Halaman Contacts')),
    const Center(child: Text('Ini Halaman Calls')),
    const Chat(),
    const Center(child: Text('Ini Halaman Settings')),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        // ignore: prefer_const_literals_to_create_immutables
        tabBar: CupertinoTabBar(items: [
          const BottomNavigationBarItem(
              label: 'Contacts', icon: Icon(CupertinoIcons.person)),
          const BottomNavigationBarItem(
              label: 'Calls', icon: Icon(CupertinoIcons.phone)),
          const BottomNavigationBarItem(
              label: 'Chats', icon: Icon(CupertinoIcons.chat_bubble)),
          const BottomNavigationBarItem(
              label: 'Setting', icon: Icon(CupertinoIcons.settings))
        ]),
        tabBuilder: ((context, index) {
          return tabs[index];
        }));
  }
}
