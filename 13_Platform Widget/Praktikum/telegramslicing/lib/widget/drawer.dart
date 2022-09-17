import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bgAvatar.jpg'),
                      fit: BoxFit.cover)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              accountName: Text('IqbalNova'),
              accountEmail: Text('iqbal.gmail.com')),
          ListTile(
            title: const Text('New Group'),
            leading: const Icon(Icons.group),
            onTap: () {},
          ),
          ListTile(
            title: const Text('New Secret Chat'),
            leading: const Icon(Icons.lock),
            onTap: () {},
          ),
          ListTile(
            title: const Text('New Channel'),
            leading: const Icon(Icons.speaker_notes),
            onTap: () {},
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            title: const Text('Contacts'),
            leading: const Icon(Icons.account_box_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Invite Friends'),
            leading: const Icon(Icons.group_add),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Telegram FAQ'),
            leading: const Icon(Icons.help),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
